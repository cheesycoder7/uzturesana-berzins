1. skripts: izvada datora nosaukumu, operētājsistēmas versiju, tās būvējuma numuru, PowerShell versiju, komandas palaišanas laiku un visu aktīvo procesu skaitu.
2. skripts: parāda augošā secībā, kas izmanto visvairāk RAM (Working Set) megabaitos, kā arī parāda procesa nosaukumu un arī ID.
3. skripts: saskaita visus servisus pēc tā, vai tie ir aktīvi vai apturēti. (Un, jā, var būt tā, ka summa atšķiras no īstā skaita, jo šeit mēs saskaitām tikai tos servisus, kas iet un kas ir apstādināti, kamēr izmantojot Get-Service var arī redzēt citus darbošanās stāvokļus (piemēram "Paused")
4. skripts: ja neatrod servisus kuri ir automātiski palaižāmi un apstādināti, ieraksta "0", citādi, tas izvada kļūdas uz pašu failu (jo, ja serviss startējas pareizi, tad tas parasti arī neko neuzrāda)
5. skripts: izvada kopējo kļūdas skaitu, biežāko kļūdas avotu un tad biežāko kļūdas skaitu.
6. skripts: izvada CSV rindu skaitu.
Manis izvēlētais draiveris pieder manam procesoram (nu, kā jau šeit redzams pašā CSV izvadē...)
"AMD Processor",,,,,,,,,"{50127dc3-0f36-415e-a6cc-4cb3be910b65}","ACPI\Processor","PROCESSOR","ACPI\AUTHENTICAMD_-_AMD64_FAMILY_26_MODEL_68_-_AMD_RYZEN_7_9800X3D_8-CORE_PROCESSOR___________\E","AMD Processor",,"4/21/2009 3:00:00 AM",,"Microsoft","10.0.26100.9549","AMD Ryzen 7 9800X3D 8-Core Processor           ","ACPI\VEN_ACPI&DEV_0007","cpu.inf","True",,"Advanced Micro Devices","\Device\0000003d","Microsoft Windows",
7. skripts: izvada visu savienoto disku burtus (piemēram, C:), to kopējo izmēru, brīvo atmiņu, un arī parāda brīdinājumu, ja vietas palicis ir mazāk, nekā norādīts skriptā.
8. skripts: izvada aizņemto laiku katrai metodei, lai piekļūtu klāt informācijai par Spooler servisu. (atbilde uz to ir izvade.txt beigās, kā jau prasīts)
9. skripts: izvada katru aktīvo procesu, un tā lietotāju. (kamēr man nebija problēmas ar pašu palaišanu, jo viņš man nemeta kļūdas ārā, viņš nerāda lietotāju sistēmas procesiem, un es nojaušu, ka tas ir tāpēc, ka es palaidu to bez administratora tiesībām)
