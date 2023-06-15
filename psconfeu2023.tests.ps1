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

    Describe "Adding sessions" {

        $agenda = Get-PSConfEUSchedule -output object | Group-Object Day

        Describe "<_.Name>" -ForEach @($agenda.GetEnumerator()) {
            $times = @($_.Group | Group-Object StartTime)
            Context "<_.Name>" -ForEach $times {
                $sessions = @($_.Group | Foreach-Object { @( $_."A1 (Track 1)", $_."A2 (Track 2)", $_."A3 (Track 3)", $_."B (Track 4)" | Where-Object { -not [string]::IsNullOrWhitespace($_)} | ForEach-Object { $_ -replace "\n", " - "})})
                It "<_>" -ForEach $Sessions {
                    Start-Sleep -Milliseconds (Get-Random -Minimum 100 -Maximum 500)
                }
            }
        }
    }
}