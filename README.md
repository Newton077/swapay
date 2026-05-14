flowchart TD
    A([Inicio]):::startEnd --> B([Muestra de sangre seleccionada]):::startEnd
    B --> C{{Parte 2: Extracción de ADN de sangre}}:::decision

    C --> D[Se tomaron 200 μL de sangre total<br/>y se transfirieron a un tubo estéril]:::process
    D --> E[Se agregaron 20 μL de Proteinasa K<br/>al fondo del tubo]:::buffer
    E --> F[Se añadieron 200 μL de buffer<br/>de lisis AL y se mezcló en vortex<br/>por 15 seg]:::buffer

    F --> G{{Incubar a 56 °C durante 10 min<br/>para lisis completa}}:::decision
    G --> H[Se agregaron 200 μL de etanol<br/>absoluto y se mezcló nuevamente<br/>en vortex por 15 seg]:::buffer

    H --> I[Se transfirió la mezcla a la<br/>columna de sílice y se centrifugó<br/>a 8.000 g por 1 min]:::process
    I --> J[Se descartó el filtrado y se<br/>colocó la columna en un tubo nuevo]:::process

    J --> K{{Lavados de la columna}}:::decision
    K -->|Lavado 1| L[Se agregaron 500 μL de buffer AW1<br/>y se centrifugó a 8.000 g por 1 min]:::buffer
    K -->|Lavado 2| M[Se agregaron 500 μL de buffer AW2<br/>y se centrifugó a 14.000 g por 3 min]:::buffer

    L --> N[Se descartó el filtrado]:::process
    M --> N

    N --> O[Se transfirió la columna a un<br/>tubo de elución limpio]:::process
    O --> P([Se adicionaron 50 μL de buffer<br/>de elución AE y se dejó 2 min<br/>a temperatura ambiente]):::startEnd
    P --> Q[Se centrifugó a 8.000 g por 1 min<br/>para recuperar el ADN]:::process
    Q --> R([Análisis de concentración y<br/>pureza en NanoDrop]):::startEnd

    classDef startEnd fill:#D9C2F0,stroke:#5B2A86,stroke-width:1px,color:#000
    classDef decision fill:#FCE38A,stroke:#B58900,stroke-width:1px,color:#000
    classDef process fill:#C7E89E,stroke:#3E7C17,stroke-width:1px,color:#000
    classDef buffer fill:#A9D6E5,stroke:#1E6091,stroke-width:1px,color:#000
