Describe 'Running PSConfEU 2023 Tests' {

    Context 'Sponsors readiness checks' {

        It 'Should have some content' {
            $true | Should -be $true
        }

        It 'Sponsors have some content' {
            $true | Should -be $true
        }
    }

    Context 'Catering Organisation checks' {
        It 'Should know the conference schedule' {
            Start-Sleep -Seconds 2
            $true | Should -be $true
        }

        It 'Should have coffee breaks ready' {
            $true | Should -be $true
        }

    }

    Context 'PowerShell Community Dinner checks' {

        It 'Should have some content' {
            Start-Sleep -Seconds 2
            $true | Should -be $true
        }

        It 'Sponsors have some content' {
            Start-Sleep -Seconds 1
            $true | Should -be $true
        }
    }

    $agenda = @(
        @{
            Day = "Monday"
            Sessions = @(
                @{
                    Time = "9:00"
                    Titles = @(
                        "Keynote"
                    )
                }
                @{
                    Time = "11:00"
                    Titles = @(
                        "Pester is the best"
                        "Talk2"
                    )
                }
            )
        },
        @{
            Day = "Tuesday"
            Sessions = @(
                @{ 
                    Time = "9:00"
                    Titles = @(
                        "talk 1"
                        "Talk 2"
                    )
                }
                @{
                    Time = "10:00"
                    Titles = @(
                        "talk 1"
                        "talk 2"
                    )
                }
            )
        }
    )

    Describe "Adding sessions" {
        Describe "<Day>" -ForEach $Agenda {
            Context "<_.Time>" -ForEach $_.Sessions {
                It "<_>" -ForEach $_.Titles {
                    Start-Sleep -Milliseconds (Get-Random -Minimum 100 -Maximum 500)
                }
            }
        }
    }
}