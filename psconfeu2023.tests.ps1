Describe 'Running PSConfEU 2023 Tests' {

    Describe 'There should be Sponsors' {

        $Sponsors = 'Chocolatey', 'Patch My PC', 'Script Runner', 'Nocentino Systems'

        It 'We should have 4 sponsors' {
            $true | Should -Be $true
        }

        Context 'Most Amazing Sponsor <_>' -ForEach $Sponsors {
            It 'THANK YOU - <_>' {
                $true | Should -Be $true
            }
            It '<_> should have a logo' {
                $true | Should -Be $true
            }
            It 'There should be a stand for <_>' {
                $true | Should -Be $true
            }
            It 'All boxes for <_> shall arrive' {
                $true | Should -Be $true
            }
            It 'We are MOST GRATEFUL for the support of <_> - THANK YOU' {
                $true | Should -Be $true
            }
        }
    }

    Context 'Catering Organisation checks' {
        It 'Should know the conference schedule' {
            Start-Sleep -Seconds 2
            $true | Should -Be $true
        }

        It 'Should have coffee breaks ready' {
            $true | Should -Be $true
        }

    }

    Context 'PowerShell Community Dinner checks' {

        It 'Should have some content' {
            Start-Sleep -Seconds 2
            $true | Should -Be $true
        }

        It 'Sponsors have some content' {
            Start-Sleep -Seconds 1
            $true | Should -Be $true
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