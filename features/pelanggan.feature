Feature: add pelanggan

  Scenario: Success open add pelanggan menu
    Given the user success login to kasiraja website
    When the user open pelanggan menu
    And the user click tambah button


  # negative test
  Scenario: Failed add pelanggan with empty name
    And the user add pelanggan with this following data:
      | name | phoneNumber | address | note |
      |      | 08989899988 |         |      |
    And the user click simpan button
    Then the user should see an alert with text "is not allowed to be empty"

  # positive test
  Scenario: Success add pelanggan
    And the user add pelanggan with this following data:
      | name        | phoneNumber | address    | note           |
      | ana haswell | 08989899988 | kalimalang | ga pake sambel |
    And the user click simpan button
    Then the user should see an alert with text "item ditambahkan"