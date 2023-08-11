cwlVersion: v1.0
steps:
  read-potential-cases-i2b2:
    run: read-potential-cases-i2b2.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  respiratory-tract-infection-unspecified---secondary:
    run: respiratory-tract-infection-unspecified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  complex-respiratory-tract-infection---secondary:
    run: complex-respiratory-tract-infection---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: respiratory-tract-infection-unspecified---secondary/output
  other-respiratory-tract-infection---secondary:
    run: other-respiratory-tract-infection---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: complex-respiratory-tract-infection---secondary/output
  respiratory-tract-infection-pleurisy---secondary:
    run: respiratory-tract-infection-pleurisy---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: other-respiratory-tract-infection---secondary/output
  respiratory-tract-infection-method---secondary:
    run: respiratory-tract-infection-method---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: respiratory-tract-infection-pleurisy---secondary/output
  infiltrative-respiratory-tract-infection---secondary:
    run: infiltrative-respiratory-tract-infection---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: respiratory-tract-infection-method---secondary/output
  respiratory-tract-infection-cavity---secondary:
    run: respiratory-tract-infection-cavity---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: infiltrative-respiratory-tract-infection---secondary/output
  respiratory-tract-infection-bronchu---secondary:
    run: respiratory-tract-infection-bronchu---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: respiratory-tract-infection-cavity---secondary/output
  respiratory-tract-infection-fibrosis---secondary:
    run: respiratory-tract-infection-fibrosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: respiratory-tract-infection-bronchu---secondary/output
  respiratory-tract-infection-bronchiectasis---secondary:
    run: respiratory-tract-infection-bronchiectasis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: respiratory-tract-infection-fibrosis---secondary/output
  respiratory-tract-infection-pneumoniae---secondary:
    run: respiratory-tract-infection-pneumoniae---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: respiratory-tract-infection-bronchiectasis---secondary/output
  respiratory-tract-infection-pneumothorax---secondary:
    run: respiratory-tract-infection-pneumothorax---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: respiratory-tract-infection-pneumoniae---secondary/output
  thoracic-respiratory-tract-infection---secondary:
    run: thoracic-respiratory-tract-infection---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: respiratory-tract-infection-pneumothorax---secondary/output
  tracheal-respiratory-tract-infection---secondary:
    run: tracheal-respiratory-tract-infection---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: thoracic-respiratory-tract-infection---secondary/output
  respiratory-tract-infection-laryngitis---secondary:
    run: respiratory-tract-infection-laryngitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: tracheal-respiratory-tract-infection---secondary/output
  respiratory-tract-infection-bronchitis---secondary:
    run: respiratory-tract-infection-bronchitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: respiratory-tract-infection-laryngitis---secondary/output
  syncytial-respiratory-tract-infection---secondary:
    run: syncytial-respiratory-tract-infection---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: respiratory-tract-infection-bronchitis---secondary/output
  respiratory-tract-infection-streptococcu---secondary:
    run: respiratory-tract-infection-streptococcu---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: syncytial-respiratory-tract-infection---secondary/output
  respiratory-tract-infection-asthma---secondary:
    run: respiratory-tract-infection-asthma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: respiratory-tract-infection-streptococcu---secondary/output
  respiratory-tract-infection-organism---secondary:
    run: respiratory-tract-infection-organism---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: respiratory-tract-infection-asthma---secondary/output
  respiratory-tract-infection-influenzae---secondary:
    run: respiratory-tract-infection-influenzae---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: respiratory-tract-infection-organism---secondary/output
  respiratory-tract-infection-specified---secondary:
    run: respiratory-tract-infection-specified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: respiratory-tract-infection-influenzae---secondary/output
  obstructive-respiratory-tract-infection---secondary:
    run: obstructive-respiratory-tract-infection---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: respiratory-tract-infection-specified---secondary/output
  respiratory-tract-infection-empyema---secondary:
    run: respiratory-tract-infection-empyema---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: obstructive-respiratory-tract-infection---secondary/output
  respiratory-tract-infection-abscess---secondary:
    run: respiratory-tract-infection-abscess---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: respiratory-tract-infection-empyema---secondary/output
  pulmonary-respiratory-tract-infection---secondary:
    run: pulmonary-respiratory-tract-infection---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: respiratory-tract-infection-abscess---secondary/output
  respiratory-tract-infection-fistula---secondary:
    run: respiratory-tract-infection-fistula---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: pulmonary-respiratory-tract-infection---secondary/output
  respiratory-tract-infection-confirmed---secondary:
    run: respiratory-tract-infection-confirmed---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: respiratory-tract-infection-fistula---secondary/output
  respiratory-tract-infection-culture---secondary:
    run: respiratory-tract-infection-culture---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: respiratory-tract-infection-confirmed---secondary/output
  respiratory-tract-infection-lymph---secondary:
    run: respiratory-tract-infection-lymph---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: respiratory-tract-infection-culture---secondary/output
  primary-respiratory-tract-infection---secondary:
    run: primary-respiratory-tract-infection---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: respiratory-tract-infection-lymph---secondary/output
  respiratory-tract-infection-tuberculosis---secondary:
    run: respiratory-tract-infection-tuberculosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: primary-respiratory-tract-infection---secondary/output
  histological-respiratory-tract-infection---secondary:
    run: histological-respiratory-tract-infection---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: respiratory-tract-infection-tuberculosis---secondary/output
  respiratory-tract-infection-confirmation---secondary:
    run: respiratory-tract-infection-confirmation---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: histological-respiratory-tract-infection---secondary/output
  respiratory-tract-infection-legionnaires---secondary:
    run: respiratory-tract-infection-legionnaires---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: respiratory-tract-infection-confirmation---secondary/output
  respiratory-tract-infection-metapneumovirus---secondary:
    run: respiratory-tract-infection-metapneumovirus---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: respiratory-tract-infection-legionnaires---secondary/output
  bacterial-respiratory-tract-infection---secondary:
    run: bacterial-respiratory-tract-infection---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: respiratory-tract-infection-metapneumovirus---secondary/output
  respiratory-tract-infection-mycoplasma---secondary:
    run: respiratory-tract-infection-mycoplasma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: bacterial-respiratory-tract-infection---secondary/output
  infectious-respiratory-tract-infection---secondary:
    run: infectious-respiratory-tract-infection---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: respiratory-tract-infection-mycoplasma---secondary/output
  respiratory-tract-infection-bronchiolitis---secondary:
    run: respiratory-tract-infection-bronchiolitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: infectious-respiratory-tract-infection---secondary/output
  lower-respiratory-tract-infection---secondary:
    run: lower-respiratory-tract-infection---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: respiratory-tract-infection-bronchiolitis---secondary/output
  chronic-respiratory-tract-infection---secondary:
    run: chronic-respiratory-tract-infection---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: lower-respiratory-tract-infection---secondary/output
  respiratory-tract-infection-mediastinum---secondary:
    run: respiratory-tract-infection-mediastinum---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: chronic-respiratory-tract-infection---secondary/output
  respiratory-tract-infection---secondary:
    run: respiratory-tract-infection---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: respiratory-tract-infection-mediastinum---secondary/output
  respiratory-tract-infection-pyothorax---secondary:
    run: respiratory-tract-infection-pyothorax---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: respiratory-tract-infection---secondary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: respiratory-tract-infection-pyothorax---secondary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
