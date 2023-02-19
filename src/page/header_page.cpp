/**
 * header_page.cpp
 */
#include <cassert>
#include <iostream>

#include "page/header_page.h"

namespace scudb {

/**
 * Record related
 */
bool HeaderPage::InsertRecord(const std::string &name,const page_id_t root_id) {
  assert(name.length() < 32);
  assert(root_id > INVALID_PAGE_ID);

  int NumRecord = GetRecordCount();
  int OffSet = 4 + NumRecord * 36;
  // check for duplicate name
  if (FindRecord(name) != -1)
    return false;
  // copy record content

  memcpy(GetData() + OffSet, name.c_str(), (name.length() + 1));
  memcpy((GetData() + OffSet + 32), &root_id, 4);

  SetRecordCount(NumRecord + 1);
  return true;
}

bool HeaderPage::DeleteRecord(const std::string &name) {
  int NumRecord = GetRecordCount();
  assert(NumRecord > 0);
  int Ind = FindRecord(name);
  // record does not exsit
  if (Ind == -1)
    return false;
  int OffSet = Ind * 36 + 4;
  memmove(GetData() + OffSet, GetData() + OffSet + 36,
          (NumRecord - Ind - 1) * 36);

  SetRecordCount(NumRecord - 1);
  return true;
}

bool HeaderPage::UpdateRecord(const std::string &name,const page_id_t root_id) {
  assert(name.length() < 32);

  int Ind = FindRecord(name);
  // record does not exsit
  if (Ind == -1)
    return false;
  int offset = Ind * 36 + 4;
  // update record content, only root_id
  memcpy((GetData() + offset + 32), &root_id, 4);

  return true;
}

bool HeaderPage::GetRootId(const std::string &name, page_id_t &root_id) {
  assert(name.length() < 32);

  int Ind = FindRecord(name);
  // record does not exsit
  if (Ind == -1)
    return false;
  int OffSet = (Ind + 1) * 36;
  root_id = *reinterpret_cast<page_id_t *>(GetData() + OffSet);

  return true;
}

/**
 * helper functions
 */
// record count
int HeaderPage::GetRecordCount() {
    return *reinterpret_cast<int *>(GetData());
}

void HeaderPage::SetRecordCount(int record_count) {
  memcpy(GetData(), &record_count, 4);
}

int HeaderPage::FindRecord(const std::string &name) {
  int NumRecord = GetRecordCount();

  for (int a = 0; a < NumRecord; a++) {
    char *raw_name = reinterpret_cast<char *>(GetData() + (4 + a * 36));
    if (strcmp(raw_name, name.c_str()) == 0)
      return a;
  }
  return -1;
}
} // namespace scudb
