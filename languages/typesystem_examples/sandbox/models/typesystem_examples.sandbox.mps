<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:3583798c-d372-4649-bcd4-d4bd707d16a4(typesystem_examples.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="8c7ff9ec-4437-42e5-a861-c74396e65d49" name="typesystem_examples" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="11" />
  </languages>
  <imports />
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="3fo57vXTkN1">
    <property role="TrG5h" value="MyClass1" />
    <node concept="3Tm1VV" id="3fo57vXTkN2" role="1B3o_S" />
    <node concept="2tJIrI" id="3fo57vXTnPd" role="jymVt" />
    <node concept="Wx3nA" id="3fo57vXTnSC" role="jymVt">
      <property role="TrG5h" value="m1" />
      <node concept="10Oyi0" id="3fo57vXTnSE" role="1tU5fm" />
      <node concept="3Tm1VV" id="3fo57vXTnSF" role="1B3o_S" />
    </node>
  </node>
  <node concept="312cEu" id="3fo57vXTnPZ">
    <property role="TrG5h" value="MyClass2" />
    <node concept="3Tm1VV" id="3fo57vXTnQ0" role="1B3o_S" />
    <node concept="2tJIrI" id="3fo57vXTnQp" role="jymVt" />
    <node concept="3clFb_" id="3fo57vXTnR3" role="jymVt">
      <property role="TrG5h" value="foobar" />
      <node concept="3clFbS" id="3fo57vXTnR6" role="3clF47">
        <node concept="3clFbF" id="3fo57vXTnRJ" role="3cqZAp">
          <node concept="10Nm6u" id="3fo57vXTKGv" role="3clFbG" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3fo57vXTnQC" role="1B3o_S" />
      <node concept="3uibUv" id="3fo57vXTKCR" role="3clF45">
        <ref role="3uigEE" node="3fo57vXTkN1" resolve="MyClass1" />
      </node>
    </node>
  </node>
</model>

