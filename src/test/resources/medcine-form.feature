Feature: Медицинская карта для работников оптик
  Какое то очень важное опиание фичи

  Background:
    Given Я как офтальмолог ищу "ITigris" в гугле
    When Проверяю есть ли там слово "автоматизация"
    And Я как офтальмалог логинюсь в оптиму с логином "supervasya" и паролем "qwerty"
    Then Я как офтальмалог вижу список сервисных програм для клиента "<program_name>" – "<description>"

  Scenario Outline: Сервисная программа получения бесплатных линз
  | program_name     | description          |
  | бесплатные линзы | получите линзы за... |
    Given Пользователь "<user>" общается с офтальмологом
    When Я предлагаю ему сервисную программу
    And Пользователь даёт мне свой телефон "<phone>"
    And Я получаю код на телефон
    And Пользователь вводит код с телефона
    Then Я подверждаю сервисную программу
    And Партнёр получает информацию о пользователе
    And Пользователь получает обещанный сервисной программой плюшки

    Examples:
      | user                   | phone       |
      | Тест Тестов Тестовской | +7909999999 |
      | Баг Багов Баговской    | +7909999999 |

