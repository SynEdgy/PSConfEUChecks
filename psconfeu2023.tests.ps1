Describe 'Running PSConfEU 2023 Tests' {

    Describe 'Location Checks' {
        It 'Cubex Prague should be ready' {
        }
    }

    Describe 'Code of Conduct Compliance' {
        It 'All participants should have accepted the code of conduct' {
            Start-Sleep -Milliseconds 700
        }
    }

    Describe 'There should be Sponsors' {

        $Sponsors = 'Chocolatey', 'Patch My PC', 'Script Runner', 'Nocentino Systems'

        It 'We should have 4 sponsors' {
        }

        Context 'Most Amazing Sponsor <_>' -ForEach $Sponsors {
            It 'THANK YOU - <_>' {
            }

            It '<_> should have a logo' {
            }

            It 'There should be a stand for <_>' {
            }

            It 'All boxes for <_> shall arrive' {
            }
            
            It 'We are MOST GRATEFUL for the support of <_> - THANK YOU' {
            }
        }
    }

    Context 'Catering Organisation checks' {
        It 'Should know the conference schedule' {
            Start-Sleep -Milliseconds (Get-Random -Minimum 25 -Maximum 400)
        }

        It 'Should have coffee breaks ready' {
        }

    }

    Context 'PowerShell Community Dinner checks' {

        It 'Should have the Restaurant ready' {
            Start-Sleep -Milliseconds (Get-Random -Minimum 25 -Maximum 400)
        }

        It 'Sponsors have some fun planned' {
            Start-Sleep -Milliseconds (Get-Random -Minimum 25 -Maximum 400)
        }
    }

    Describe "Adding sessions" {

        $agenda = Get-PSConfEUSchedule -output object | Group-Object Day

        Describe "<_.Name>" -ForEach @($agenda.GetEnumerator()) {
            $times = @($_.Group | Group-Object StartTime)
            Context "<_.Name>" -ForEach $times {
                $sessions = @($_.Group | Foreach-Object { @( $_."A1 (Track 1)", $_."A2 (Track 2)", $_."A3 (Track 3)", $_."B (Track 4)" | Where-Object { -not [string]::IsNullOrWhitespace($_)} | ForEach-Object { $_ -replace "\n", " - "})})
                It "<_>" -ForEach $Sessions {
                    Start-Sleep -Milliseconds (Get-Random -Minimum 25 -Maximum 400)
                }
            }
        }
    }
}
