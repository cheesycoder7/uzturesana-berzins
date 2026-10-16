1. skripts: izvada datora nosaukumu, operētājsistēmas versiju, tās būvējuma numuru, PowerShell versiju, komandas palaišanas laiku un visu aktīvo procesu skaitu.
2. skripts: parāda augošā secībā, kas izmanto visvairāk RAM (Working Set) megabaitos, kā arī parāda procesa nosaukumu un arī ID.
3. skripts: saskaita visus servisus pēc tā, vai tie ir aktīvi vai apturēti. (Un, jā, var būt tā, ka summa atšķiras no īstā skaita, jo šeit mēs saskaitām tikai tos servisus, kas iet un kas ir apstādināti, kamēr izmantojot Get-Service var arī redzēt citus darbošanās stāvokļus (piemēram "Paused")
