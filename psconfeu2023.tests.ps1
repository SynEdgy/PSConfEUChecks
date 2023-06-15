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