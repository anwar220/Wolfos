# classes.dex

.class public Landroid/animation/AnimatorInflater;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/AnimatorInflater$PathDataEvaluator;
    }
.end annotation


# static fields
.field private static final DBG_ANIMATOR_INFLATER:Z = false

.field private static final SEQUENTIALLY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AnimatorInflater"

.field private static final TOGETHER:I = 0x0

.field private static final VALUE_TYPE_COLOR:I = 0x3

.field private static final VALUE_TYPE_FLOAT:I = 0x0

.field private static final VALUE_TYPE_INT:I = 0x1

.field private static final VALUE_TYPE_PATH:I = 0x2

.field private static final VALUE_TYPE_UNDEFINED:I = 0x4

.field private static final sTmpTypedValue:Landroid/util/TypedValue;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    sput-object v0, Landroid/animation/AnimatorInflater;->sTmpTypedValue:Landroid/util/TypedValue;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;F)Landroid/animation/Animator;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Landroid/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method private static createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;
    .registers 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move/from16 v11, p6

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    move-object v13, v1

    :goto_11
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v14, v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_24

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    if-le v1, v12, :cond_20

    goto :goto_24

    :cond_20
    move-object/from16 v2, p2

    goto/16 :goto_f2

    :cond_24
    :goto_24
    const/4 v1, 0x1

    if-eq v14, v1, :cond_f0

    const/4 v1, 0x2

    if-eq v14, v1, :cond_2b

    goto :goto_11

    :cond_2b
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const-string/jumbo v1, "objectAnimator"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-static {v7, v8, v9, v11}, Landroid/animation/AnimatorInflater;->loadObjectAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    move-object/from16 v2, p2

    goto/16 :goto_c0

    :cond_42
    const-string v1, "animator"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    const/4 v1, 0x0

    invoke-static {v7, v8, v9, v1, v11}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;F)Landroid/animation/ValueAnimator;

    move-result-object v0

    move-object/from16 v2, p2

    goto/16 :goto_c0

    :cond_53
    const-string/jumbo v1, "set"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9b

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    move-object v6, v1

    const/4 v0, 0x0

    if-eqz v8, :cond_6d

    sget-object v1, Lcom/android/internal/R$styleable;->AnimatorSet:[I

    invoke-virtual {v8, v9, v1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    move-object v5, v1

    goto :goto_74

    :cond_6d
    sget-object v1, Lcom/android/internal/R$styleable;->AnimatorSet:[I

    invoke-virtual {v7, v9, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    move-object v5, v1

    :goto_74
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/animation/Animator;->appendChangingConfigurations(I)V

    invoke-virtual {v5, v0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    move-object v4, v6

    check-cast v4, Landroid/animation/AnimatorSet;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v18, v5

    move/from16 v5, v17

    move-object/from16 v19, v6

    move/from16 v6, p6

    invoke-static/range {v0 .. v6}, Landroid/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/TypedArray;->recycle()V

    move-object/from16 v0, v19

    goto :goto_c0

    :cond_9b
    const-string/jumbo v1, "propertyValuesHolder"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d1

    nop

    invoke-static/range {p2 .. p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-static {v7, v8, v2, v1}, Landroid/animation/AnimatorInflater;->loadValues(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)[Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    if-eqz v1, :cond_bd

    if-eqz v0, :cond_bd

    instance-of v3, v0, Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_bd

    move-object v3, v0

    check-cast v3, Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    :cond_bd
    const/16 v16, 0x1

    nop

    :goto_c0
    if-eqz v10, :cond_cf

    if-nez v16, :cond_cf

    if-nez v13, :cond_cc

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v1

    :cond_cc
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_cf
    goto/16 :goto_11

    :cond_d1
    move-object/from16 v2, p2

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown animator name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f0
    move-object/from16 v2, p2

    :goto_f2
    if-eqz v10, :cond_11c

    if-eqz v13, :cond_11c

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v3, 0x0

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_101
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_113

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator;

    add-int/lit8 v6, v3, 0x1

    aput-object v5, v1, v3

    move v3, v6

    goto :goto_101

    :cond_113
    if-nez p5, :cond_119

    invoke-virtual {v10, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_11c

    :cond_119
    invoke-virtual {v10, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    :cond_11c
    :goto_11c
    return-object v0
.end method

.method private static createNewKeyframe(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;
    .registers 4

    invoke-virtual {p0}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_d

    invoke-static {p1}, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;

    move-result-object v0

    goto :goto_1e

    :cond_d
    invoke-virtual {p0}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1a

    invoke-static {p1}, Landroid/animation/Keyframe;->ofInt(F)Landroid/animation/Keyframe;

    move-result-object v0

    goto :goto_1e

    :cond_1a
    invoke-static {p1}, Landroid/animation/Keyframe;->ofObject(F)Landroid/animation/Keyframe;

    move-result-object v0

    :goto_1e
    return-object v0
.end method

.method private static createStateListAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/animation/StateListAnimator;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    new-instance v0, Landroid/animation/StateListAnimator;

    invoke-direct {v0}, Landroid/animation/StateListAnimator;-><init>()V

    :goto_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    packed-switch v1, :pswitch_data_6e

    goto :goto_6c

    :pswitch_d  #0x2
    const/4 v2, 0x0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "item"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6c

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    new-array v4, v3, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_22
    if-ge v6, v3, :cond_48

    invoke-interface {p2, v6}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v7

    const v8, 0x10101cd

    const/4 v9, 0x0

    if-ne v7, v8, :cond_37

    invoke-interface {p2, v6, v9}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    move-result v8

    invoke-static {p0, v8}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    goto :goto_45

    :cond_37
    add-int/lit8 v8, v5, 0x1

    invoke-interface {p2, v6, v9}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v9

    if-eqz v9, :cond_41

    move v9, v7

    goto :goto_42

    :cond_41
    neg-int v9, v7

    :goto_42
    aput v9, v4, v5

    move v5, v8

    :goto_45
    add-int/lit8 v6, v6, 0x1

    goto :goto_22

    :cond_48
    if-nez v2, :cond_58

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const/high16 v8, 0x3f800000  # 1.0f

    invoke-static {v6, v7, p1, v8}, Landroid/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;F)Landroid/animation/Animator;

    move-result-object v2

    :cond_58
    if-eqz v2, :cond_63

    nop

    invoke-static {v4, v5}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v6

    invoke-virtual {v0, v6, v2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    goto :goto_6c

    :cond_63
    new-instance v6, Landroid/content/res/Resources$NotFoundException;

    const-string v7, "animation state item must have a valid animation"

    invoke-direct {v6, v7}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v6

    :pswitch_6b  #0x1, 0x3
    return-object v0

    :cond_6c
    :goto_6c
    goto :goto_5

    nop

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_6b  #00000001
        :pswitch_d  #00000002
        :pswitch_6b  #00000003
    .end packed-switch
.end method

.method private static distributeKeyframes([Landroid/animation/Keyframe;FII)V
    .registers 9

    sub-int v0, p3, p2

    add-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    div-float v1, p1, v1

    move v2, p2

    :goto_8
    if-gt v2, p3, :cond_1b

    aget-object v3, p0, v2

    add-int/lit8 v4, v2, -0x1

    aget-object v4, p0, v4

    invoke-virtual {v4}, Landroid/animation/Keyframe;->getFraction()F

    move-result v4

    add-float/2addr v4, v1

    invoke-virtual {v3, v4}, Landroid/animation/Keyframe;->setFraction(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1b
    return-void
.end method

.method private static dumpKeyframes([Ljava/lang/Object;Ljava/lang/String;)V
    .registers 9

    if-eqz p0, :cond_61

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_61

    :cond_6
    const-string v0, "AnimatorInflater"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v1, p0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_60

    aget-object v3, p0, v2

    check-cast v3, Landroid/animation/Keyframe;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Keyframe "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": fraction "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/animation/Keyframe;->getFraction()F

    move-result v5

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    const-string/jumbo v6, "null"

    if-gez v5, :cond_36

    move-object v5, v6

    goto :goto_3e

    :cond_36
    invoke-virtual {v3}, Landroid/animation/Keyframe;->getFraction()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    :goto_3e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", , value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/animation/Keyframe;->hasValue()Z

    move-result v5

    if-eqz v5, :cond_52

    invoke-virtual {v3}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v6

    :cond_52
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_60
    return-void

    :cond_61
    :goto_61
    return-void
.end method

.method private static getChangingConfigs(Landroid/content/res/Resources;I)I
    .registers 4

    sget-object v0, Landroid/animation/AnimatorInflater;->sTmpTypedValue:Landroid/util/TypedValue;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    iget v1, v0, Landroid/util/TypedValue;->changingConfigurations:I

    monitor-exit v0

    return v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_b

    throw v1
.end method

.method private static getPVH(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;
    .registers 27

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    if-eqz v4, :cond_10

    const/4 v7, 0x1

    goto :goto_11

    :cond_10
    const/4 v7, 0x0

    :goto_11
    if-eqz v7, :cond_16

    iget v8, v4, Landroid/util/TypedValue;->type:I

    goto :goto_17

    :cond_16
    const/4 v8, 0x0

    :goto_17
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v9

    if-eqz v9, :cond_1f

    const/4 v10, 0x1

    goto :goto_20

    :cond_1f
    const/4 v10, 0x0

    :goto_20
    if-eqz v10, :cond_25

    iget v11, v9, Landroid/util/TypedValue;->type:I

    goto :goto_26

    :cond_25
    const/4 v11, 0x0

    :goto_26
    const/4 v12, 0x4

    move/from16 v13, p1

    if-ne v13, v12, :cond_3f

    if-eqz v7, :cond_33

    invoke-static {v8}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v12

    if-nez v12, :cond_3b

    :cond_33
    if-eqz v10, :cond_3d

    invoke-static {v11}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v12

    if-eqz v12, :cond_3d

    :cond_3b
    const/4 v12, 0x3

    goto :goto_40

    :cond_3d
    const/4 v12, 0x0

    goto :goto_40

    :cond_3f
    move v12, v13

    :goto_40
    if-nez v12, :cond_44

    const/4 v13, 0x1

    goto :goto_45

    :cond_44
    const/4 v13, 0x0

    :goto_45
    const/4 v14, 0x0

    const/4 v15, 0x2

    if-ne v12, v15, :cond_ee

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-nez v5, :cond_55

    const/4 v15, 0x0

    goto :goto_5a

    :cond_55
    new-instance v15, Landroid/util/PathParser$PathData;

    invoke-direct {v15, v5}, Landroid/util/PathParser$PathData;-><init>(Ljava/lang/String;)V

    :goto_5a
    if-nez v6, :cond_60

    move-object/from16 v18, v4

    const/4 v4, 0x0

    goto :goto_67

    :cond_60
    move-object/from16 v18, v4

    new-instance v4, Landroid/util/PathParser$PathData;

    invoke-direct {v4, v6}, Landroid/util/PathParser$PathData;-><init>(Ljava/lang/String;)V

    :goto_67
    if-nez v15, :cond_74

    if-eqz v4, :cond_6c

    goto :goto_74

    :cond_6c
    move-object/from16 v19, v9

    move/from16 v21, v11

    move-object/from16 v20, v14

    goto/16 :goto_e6

    :cond_74
    :goto_74
    if-eqz v15, :cond_cd

    move-object/from16 v19, v9

    new-instance v9, Landroid/animation/AnimatorInflater$PathDataEvaluator;

    move-object/from16 v20, v14

    const/4 v14, 0x0

    invoke-direct {v9, v14}, Landroid/animation/AnimatorInflater$PathDataEvaluator;-><init>(Landroid/animation/AnimatorInflater$PathDataEvaluator-IA;)V

    if-eqz v4, :cond_bf

    invoke-static {v15, v4}, Landroid/util/PathParser;->canMorph(Landroid/util/PathParser$PathData;Landroid/util/PathParser$PathData;)Z

    move-result v14

    if-eqz v14, :cond_9a

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v15, v14, v17

    const/16 v16, 0x1

    aput-object v4, v14, v16

    invoke-static {v3, v9, v14}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    move/from16 v21, v11

    goto :goto_cc

    :cond_9a
    new-instance v14, Landroid/view/InflateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v21, v11

    const-string v11, " Can\'t morph from "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, " to "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v14, v2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_bf
    move/from16 v21, v11

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v15, v2, v11

    invoke-static {v3, v9, v2}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    move-object v14, v2

    :goto_cc
    goto :goto_e8

    :cond_cd
    move-object/from16 v19, v9

    move/from16 v21, v11

    move-object/from16 v20, v14

    if-eqz v4, :cond_e6

    new-instance v2, Landroid/animation/AnimatorInflater$PathDataEvaluator;

    const/4 v9, 0x0

    invoke-direct {v2, v9}, Landroid/animation/AnimatorInflater$PathDataEvaluator;-><init>(Landroid/animation/AnimatorInflater$PathDataEvaluator-IA;)V

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v4, v9, v11

    invoke-static {v3, v2, v9}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    goto :goto_e8

    :cond_e6
    :goto_e6
    move-object/from16 v14, v20

    :goto_e8
    move/from16 v11, p3

    move/from16 v9, v21

    goto/16 :goto_1e3

    :cond_ee
    move-object/from16 v18, v4

    move-object/from16 v19, v9

    move/from16 v21, v11

    move-object/from16 v20, v14

    const/4 v2, 0x0

    const/4 v4, 0x3

    if-ne v12, v4, :cond_fe

    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v2

    :cond_fe
    const/4 v4, 0x5

    const/4 v5, 0x0

    if-eqz v13, :cond_15d

    if-eqz v7, :cond_141

    if-ne v8, v4, :cond_10b

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    goto :goto_10f

    :cond_10b
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    :goto_10f
    if-eqz v10, :cond_131

    move/from16 v9, v21

    if-ne v9, v4, :cond_11c

    move/from16 v11, p3

    invoke-virtual {v0, v11, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    goto :goto_122

    :cond_11c
    move/from16 v11, p3

    invoke-virtual {v0, v11, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    :goto_122
    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v14, 0x0

    aput v6, v5, v14

    const/4 v15, 0x1

    aput v4, v5, v15

    invoke-static {v3, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    move-object v14, v5

    goto :goto_15b

    :cond_131
    move/from16 v11, p3

    move/from16 v9, v21

    const/4 v14, 0x0

    const/4 v15, 0x1

    new-array v4, v15, [F

    aput v6, v4, v14

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    move-object v14, v4

    goto :goto_15b

    :cond_141
    move/from16 v11, p3

    move/from16 v9, v21

    if-ne v9, v4, :cond_14c

    invoke-virtual {v0, v11, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    goto :goto_150

    :cond_14c
    invoke-virtual {v0, v11, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    :goto_150
    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v4, v5, v6

    invoke-static {v3, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    move-object v14, v5

    :goto_15b
    goto/16 :goto_1dc

    :cond_15d
    move/from16 v11, p3

    move/from16 v9, v21

    if-eqz v7, :cond_1b3

    if-ne v8, v4, :cond_16b

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    float-to-int v6, v6

    goto :goto_17e

    :cond_16b
    invoke-static {v8}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v6

    if-eqz v6, :cond_178

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    move v6, v14

    goto :goto_17e

    :cond_178
    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    move v6, v14

    :goto_17e
    if-eqz v10, :cond_1a8

    if-ne v9, v4, :cond_18a

    invoke-virtual {v0, v11, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v4, v4

    move v5, v4

    const/4 v4, 0x0

    goto :goto_19b

    :cond_18a
    invoke-static {v9}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v4

    if-eqz v4, :cond_196

    const/4 v4, 0x0

    invoke-virtual {v0, v11, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    goto :goto_19b

    :cond_196
    const/4 v4, 0x0

    invoke-virtual {v0, v11, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    :goto_19b
    const/4 v14, 0x2

    new-array v14, v14, [I

    aput v6, v14, v4

    const/4 v15, 0x1

    aput v5, v14, v15

    invoke-static {v3, v14}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    goto :goto_1dc

    :cond_1a8
    const/4 v4, 0x0

    const/4 v15, 0x1

    new-array v5, v15, [I

    aput v6, v5, v4

    invoke-static {v3, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    goto :goto_1dc

    :cond_1b3
    if-eqz v10, :cond_1da

    if-ne v9, v4, :cond_1bf

    invoke-virtual {v0, v11, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v4, v4

    move v5, v4

    const/4 v4, 0x0

    goto :goto_1d0

    :cond_1bf
    invoke-static {v9}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v4

    if-eqz v4, :cond_1cb

    const/4 v4, 0x0

    invoke-virtual {v0, v11, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    goto :goto_1d0

    :cond_1cb
    const/4 v4, 0x0

    invoke-virtual {v0, v11, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    :goto_1d0
    const/4 v6, 0x1

    new-array v6, v6, [I

    aput v5, v6, v4

    invoke-static {v3, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    goto :goto_1dc

    :cond_1da
    move-object/from16 v14, v20

    :goto_1dc
    if-eqz v14, :cond_1e3

    if-eqz v2, :cond_1e3

    invoke-virtual {v14, v2}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    :cond_1e3
    :goto_1e3
    return-object v14
.end method

.method private static inferValueTypeFromValues(Landroid/content/res/TypedArray;II)I
    .registers 10

    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    move v3, v1

    goto :goto_b

    :cond_a
    move v3, v2

    :goto_b
    if-eqz v3, :cond_10

    iget v4, v0, Landroid/util/TypedValue;->type:I

    goto :goto_11

    :cond_10
    move v4, v2

    :goto_11
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

    if-eqz v5, :cond_18

    goto :goto_19

    :cond_18
    move v1, v2

    :goto_19
    if-eqz v1, :cond_1d

    iget v2, v5, Landroid/util/TypedValue;->type:I

    :cond_1d
    if-eqz v3, :cond_25

    invoke-static {v4}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v6

    if-nez v6, :cond_2d

    :cond_25
    if-eqz v1, :cond_2f

    invoke-static {v2}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v6

    if-eqz v6, :cond_2f

    :cond_2d
    const/4 v6, 0x3

    goto :goto_30

    :cond_2f
    const/4 v6, 0x0

    :goto_30
    return v6
.end method

.method private static inferValueTypeOfKeyframe(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)I
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    sget-object v1, Lcom/android/internal/R$styleable;->Keyframe:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    goto :goto_10

    :cond_a
    sget-object v1, Lcom/android/internal/R$styleable;->Keyframe:[I

    invoke-virtual {p0, p2, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    :goto_10
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    if-eqz v2, :cond_17

    const/4 v0, 0x1

    :cond_17
    if-eqz v0, :cond_23

    iget v3, v2, Landroid/util/TypedValue;->type:I

    invoke-static {v3}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v3

    if-eqz v3, :cond_23

    const/4 v3, 0x3

    goto :goto_24

    :cond_23
    const/4 v3, 0x0

    :goto_24
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return v3
.end method

.method private static isColorType(I)Z
    .registers 2

    const/16 v0, 0x1c

    if-lt p0, v0, :cond_a

    const/16 v0, 0x1f

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public static loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/animation/Animator;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-static {p0, p1, p2, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;IF)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public static loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;IF)Landroid/animation/Animator;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    const-string v0, "Can\'t load animation resource ID #0x"

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAnimatorCache()Landroid/content/res/ConfigurationBoundResourceCache;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v1, v2, v3, p0, p1}, Landroid/content/res/ConfigurationBoundResourceCache;->getInstance(JLandroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    if-eqz v2, :cond_10

    return-object v2

    :cond_10
    const/4 v3, 0x0

    :try_start_11
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    move-object v3, v4

    invoke-static {p0, p1, v3, p3}, Landroid/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;F)Landroid/animation/Animator;

    move-result-object v4

    move-object v2, v4

    if-eqz v2, :cond_35

    invoke-static {p0, p2}, Landroid/animation/AnimatorInflater;->getChangingConfigs(Landroid/content/res/Resources;I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/animation/Animator;->appendChangingConfigurations(I)V

    invoke-virtual {v2}, Landroid/animation/Animator;->createConstantState()Landroid/content/res/ConstantState;

    move-result-object v4

    if-eqz v4, :cond_35

    int-to-long v5, p2

    invoke-virtual {v1, v5, v6, p1, v4}, Landroid/content/res/ConfigurationBoundResourceCache;->put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;)V

    invoke-virtual {v4, p0, p1}, Landroid/content/res/ConstantState;->newInstance(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator;
    :try_end_34
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_34} :catch_5f
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_34} :catch_3e
    .catchall {:try_start_11 .. :try_end_34} :catchall_3c

    move-object v2, v5

    :cond_35
    nop

    if-eqz v3, :cond_3b

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_3b
    return-object v2

    :catchall_3c
    move-exception v0

    goto :goto_80

    :catch_3e
    move-exception v4

    :try_start_3f
    new-instance v5, Landroid/content/res/Resources$NotFoundException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    invoke-virtual {v0, v4}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    nop

    throw v0

    :catch_5f
    move-exception v4

    new-instance v5, Landroid/content/res/Resources$NotFoundException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    invoke-virtual {v0, v4}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    nop

    throw v0
    :try_end_80
    .catchall {:try_start_3f .. :try_end_80} :catchall_3c

    :goto_80
    if-eqz v3, :cond_85

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_85
    throw v0
.end method

.method private static loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;F)Landroid/animation/ValueAnimator;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_c

    sget-object v3, Lcom/android/internal/R$styleable;->Animator:[I

    invoke-virtual {p1, p2, v3, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_12

    :cond_c
    sget-object v3, Lcom/android/internal/R$styleable;->Animator:[I

    invoke-virtual {p0, p2, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    :goto_12
    if-eqz p3, :cond_2a

    if-eqz p1, :cond_1d

    sget-object v3, Lcom/android/internal/R$styleable;->PropertyAnimator:[I

    invoke-virtual {p1, p2, v3, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    goto :goto_23

    :cond_1d
    sget-object v3, Lcom/android/internal/R$styleable;->PropertyAnimator:[I

    invoke-virtual {p0, p2, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    :goto_23
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/animation/ValueAnimator;->appendChangingConfigurations(I)V

    :cond_2a
    if-nez p3, :cond_32

    new-instance v3, Landroid/animation/ValueAnimator;

    invoke-direct {v3}, Landroid/animation/ValueAnimator;-><init>()V

    move-object p3, v3

    :cond_32
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/animation/ValueAnimator;->appendChangingConfigurations(I)V

    invoke-static {p3, v0, v1, p4}, Landroid/animation/AnimatorInflater;->parseAnimatorFromTypeArray(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;F)V

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-lez v2, :cond_57

    invoke-static {p0, p1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    instance-of v4, v3, Landroid/view/animation/BaseInterpolator;

    if-eqz v4, :cond_54

    move-object v4, v3

    check-cast v4, Landroid/view/animation/BaseInterpolator;

    invoke-virtual {v4}, Landroid/view/animation/BaseInterpolator;->getChangingConfiguration()I

    move-result v4

    invoke-virtual {p3, v4}, Landroid/animation/ValueAnimator;->appendChangingConfigurations(I)V

    :cond_54
    invoke-virtual {p3, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_57
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v1, :cond_5f

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_5f
    return-object p3
.end method

.method private static loadKeyframe(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;I)Landroid/animation/Keyframe;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    sget-object v1, Lcom/android/internal/R$styleable;->Keyframe:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    goto :goto_10

    :cond_a
    sget-object v1, Lcom/android/internal/R$styleable;->Keyframe:[I

    invoke-virtual {p0, p2, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    :goto_10
    const/4 v2, 0x0

    const/4 v3, 0x3

    const/high16 v4, -0x40800000  # -1.0f

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_21

    move v6, v5

    goto :goto_22

    :cond_21
    move v6, v0

    :goto_22
    const/4 v7, 0x4

    if-ne p3, v7, :cond_32

    if-eqz v6, :cond_31

    iget v7, v4, Landroid/util/TypedValue;->type:I

    invoke-static {v7}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v7

    if-eqz v7, :cond_31

    const/4 p3, 0x3

    goto :goto_32

    :cond_31
    const/4 p3, 0x0

    :cond_32
    :goto_32
    if-eqz v6, :cond_4c

    packed-switch p3, :pswitch_data_6a

    :pswitch_37  #0x2
    goto :goto_4b

    :pswitch_38  #0x1, 0x3
    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    invoke-static {v3, v7}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v2

    goto :goto_4b

    :pswitch_41  #0x0
    const/4 v7, 0x0

    invoke-virtual {v1, v0, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    invoke-static {v3, v7}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    nop

    :goto_4b
    goto :goto_58

    :cond_4c
    if-nez p3, :cond_53

    invoke-static {v3}, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;

    move-result-object v7

    goto :goto_57

    :cond_53
    invoke-static {v3}, Landroid/animation/Keyframe;->ofInt(F)Landroid/animation/Keyframe;

    move-result-object v7

    :goto_57
    move-object v2, v7

    :goto_58
    invoke-virtual {v1, v5, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-lez v0, :cond_65

    invoke-static {p0, p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/animation/Keyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_65
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v2

    nop

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_41  #00000000
        :pswitch_38  #00000001
        :pswitch_37  #00000002
        :pswitch_38  #00000003
    .end packed-switch
.end method

.method private static loadObjectAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;F)Landroid/animation/ObjectAnimator;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    invoke-static {p0, p1, p2, v0, p3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;F)Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method private static loadPvh(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/animation/PropertyValuesHolder;
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    move/from16 v3, p4

    :goto_9
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    move v6, v5

    const/4 v7, 0x3

    if-eq v5, v7, :cond_44

    const/4 v5, 0x1

    if-eq v6, v5, :cond_44

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v7, "keyframe"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_43

    const/4 v7, 0x4

    if-ne v3, v7, :cond_2b

    invoke-static/range {p2 .. p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v7

    invoke-static {v0, v1, v7}, Landroid/animation/AnimatorInflater;->inferValueTypeOfKeyframe(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)I

    move-result v3

    :cond_2b
    invoke-static/range {p2 .. p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v7

    invoke-static {v0, v1, v7, v3}, Landroid/animation/AnimatorInflater;->loadKeyframe(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;I)Landroid/animation/Keyframe;

    move-result-object v7

    if-eqz v7, :cond_40

    if-nez v4, :cond_3d

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v8

    :cond_3d
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_40
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    :cond_43
    goto :goto_9

    :cond_44
    if-eqz v4, :cond_112

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v8, v5

    if-lez v5, :cond_10f

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/Keyframe;

    add-int/lit8 v10, v8, -0x1

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/animation/Keyframe;

    invoke-virtual {v10}, Landroid/animation/Keyframe;->getFraction()F

    move-result v11

    const/high16 v12, 0x3f800000  # 1.0f

    cmpg-float v13, v11, v12

    const/4 v14, 0x0

    if-gez v13, :cond_7c

    cmpg-float v13, v11, v14

    if-gez v13, :cond_6f

    invoke-virtual {v10, v12}, Landroid/animation/Keyframe;->setFraction(F)V

    goto :goto_7c

    :cond_6f
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-static {v10, v12}, Landroid/animation/AnimatorInflater;->createNewKeyframe(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;

    move-result-object v15

    invoke-virtual {v4, v13, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    :cond_7c
    :goto_7c
    invoke-virtual {v9}, Landroid/animation/Keyframe;->getFraction()F

    move-result v13

    cmpl-float v15, v13, v14

    if-eqz v15, :cond_95

    cmpg-float v15, v13, v14

    if-gez v15, :cond_8c

    invoke-virtual {v9, v14}, Landroid/animation/Keyframe;->setFraction(F)V

    goto :goto_95

    :cond_8c
    invoke-static {v9, v14}, Landroid/animation/AnimatorInflater;->createNewKeyframe(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;

    move-result-object v15

    invoke-virtual {v4, v5, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    :cond_95
    :goto_95
    new-array v5, v8, [Landroid/animation/Keyframe;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 v15, 0x0

    :goto_9b
    if-ge v15, v8, :cond_fe

    aget-object v7, v5, v15

    invoke-virtual {v7}, Landroid/animation/Keyframe;->getFraction()F

    move-result v16

    cmpg-float v16, v16, v14

    if-gez v16, :cond_f0

    if-nez v15, :cond_af

    invoke-virtual {v7, v14}, Landroid/animation/Keyframe;->setFraction(F)V

    move/from16 v16, v14

    goto :goto_f2

    :cond_af
    add-int/lit8 v14, v8, -0x1

    if-ne v15, v14, :cond_b9

    invoke-virtual {v7, v12}, Landroid/animation/Keyframe;->setFraction(F)V

    const/16 v16, 0x0

    goto :goto_f2

    :cond_b9
    move v14, v15

    move/from16 v17, v15

    add-int/lit8 v18, v14, 0x1

    move/from16 v12, v17

    move/from16 v0, v18

    :goto_c2
    add-int/lit8 v1, v8, -0x1

    if-ge v0, v1, :cond_d9

    aget-object v1, v5, v0

    invoke-virtual {v1}, Landroid/animation/Keyframe;->getFraction()F

    move-result v1

    const/16 v16, 0x0

    cmpl-float v1, v1, v16

    if-ltz v1, :cond_d3

    goto :goto_db

    :cond_d3
    move v12, v0

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v1, p1

    goto :goto_c2

    :cond_d9
    const/16 v16, 0x0

    :goto_db
    add-int/lit8 v0, v12, 0x1

    aget-object v0, v5, v0

    invoke-virtual {v0}, Landroid/animation/Keyframe;->getFraction()F

    move-result v0

    add-int/lit8 v1, v14, -0x1

    aget-object v1, v5, v1

    invoke-virtual {v1}, Landroid/animation/Keyframe;->getFraction()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v5, v0, v14, v12}, Landroid/animation/AnimatorInflater;->distributeKeyframes([Landroid/animation/Keyframe;FII)V

    goto :goto_f2

    :cond_f0
    move/from16 v16, v14

    :goto_f2
    add-int/lit8 v15, v15, 0x1

    const/4 v7, 0x3

    const/high16 v12, 0x3f800000  # 1.0f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v14, v16

    goto :goto_9b

    :cond_fe
    move-object/from16 v0, p3

    invoke-static {v0, v5}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    const/4 v1, 0x3

    if-ne v3, v1, :cond_114

    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    goto :goto_114

    :cond_10f
    move-object/from16 v0, p3

    goto :goto_114

    :cond_112
    move-object/from16 v0, p3

    :cond_114
    :goto_114
    return-object v2
.end method

.method public static loadStateListAnimator(Landroid/content/Context;I)Landroid/animation/StateListAnimator;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    const-string v0, "Can\'t load state list animator resource ID #0x"

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    nop

    invoke-virtual {v1}, Landroid/content/res/Resources;->getStateListAnimatorCache()Landroid/content/res/ConfigurationBoundResourceCache;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    int-to-long v4, p1

    invoke-virtual {v2, v4, v5, v1, v3}, Landroid/content/res/ConfigurationBoundResourceCache;->getInstance(JLandroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/StateListAnimator;

    if-eqz v4, :cond_19

    return-object v4

    :cond_19
    const/4 v5, 0x0

    :try_start_1a
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    move-object v5, v6

    invoke-static {v5}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    invoke-static {p0, v5, v6}, Landroid/animation/AnimatorInflater;->createStateListAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/animation/StateListAnimator;

    move-result-object v6

    move-object v4, v6

    if-eqz v4, :cond_43

    invoke-static {v1, p1}, Landroid/animation/AnimatorInflater;->getChangingConfigs(Landroid/content/res/Resources;I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/animation/StateListAnimator;->appendChangingConfigurations(I)V

    nop

    invoke-virtual {v4}, Landroid/animation/StateListAnimator;->createConstantState()Landroid/content/res/ConstantState;

    move-result-object v6

    if-eqz v6, :cond_43

    int-to-long v7, p1

    invoke-virtual {v2, v7, v8, v3, v6}, Landroid/content/res/ConfigurationBoundResourceCache;->put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;)V

    invoke-virtual {v6, v1, v3}, Landroid/content/res/ConstantState;->newInstance(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/StateListAnimator;
    :try_end_42
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1a .. :try_end_42} :catch_6d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_42} :catch_4c
    .catchall {:try_start_1a .. :try_end_42} :catchall_4a

    move-object v4, v7

    :cond_43
    nop

    if-eqz v5, :cond_49

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_49
    return-object v4

    :catchall_4a
    move-exception v0

    goto :goto_8e

    :catch_4c
    move-exception v6

    :try_start_4d
    new-instance v7, Landroid/content/res/Resources$NotFoundException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    move-object v0, v7

    invoke-virtual {v0, v6}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    nop

    throw v0

    :catch_6d
    move-exception v6

    new-instance v7, Landroid/content/res/Resources$NotFoundException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    move-object v0, v7

    invoke-virtual {v0, v6}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    nop

    throw v0
    :try_end_8e
    .catchall {:try_start_4d .. :try_end_8e} :catchall_4a

    :goto_8e
    if-eqz v5, :cond_93

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_93
    throw v0
.end method

.method private static loadValues(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)[Landroid/animation/PropertyValuesHolder;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    move v2, v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_57

    const/4 v1, 0x1

    if-eq v2, v1, :cond_57

    const/4 v4, 0x2

    if-eq v2, v4, :cond_13

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_1

    :cond_13
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "propertyValuesHolder"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_53

    const/4 v6, 0x0

    if-eqz p1, :cond_2a

    sget-object v7, Lcom/android/internal/R$styleable;->PropertyValuesHolder:[I

    invoke-virtual {p1, p3, v7, v6, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    goto :goto_30

    :cond_2a
    sget-object v7, Lcom/android/internal/R$styleable;->PropertyValuesHolder:[I

    invoke-virtual {p0, p3, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    :goto_30
    invoke-virtual {v7, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x4

    invoke-virtual {v7, v4, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-static {p0, p1, p2, v3, v4}, Landroid/animation/AnimatorInflater;->loadPvh(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    if-nez v8, :cond_43

    invoke-static {v7, v4, v6, v1, v3}, Landroid/animation/AnimatorInflater;->getPVH(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    :cond_43
    if-eqz v8, :cond_50

    if-nez v0, :cond_4d

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    :cond_4d
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_50
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    :cond_53
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_1

    :cond_57
    const/4 v1, 0x0

    if-eqz v0, :cond_6e

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v1, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    :goto_61
    if-ge v4, v3, :cond_6e

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/PropertyValuesHolder;

    aput-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_61

    :cond_6e
    return-object v1
.end method

.method private static parseAnimatorFromTypeArray(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;F)V
    .registers 15

    const/4 v0, 0x1

    const/16 v1, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    int-to-long v1, v1

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    int-to-long v5, v3

    const/4 v3, 0x7

    const/4 v7, 0x4

    invoke-virtual {p1, v3, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    const/4 v8, 0x6

    const/4 v9, 0x5

    if-ne v3, v7, :cond_1d

    invoke-static {p1, v9, v8}, Landroid/animation/AnimatorInflater;->inferValueTypeFromValues(Landroid/content/res/TypedArray;II)I

    move-result v3

    :cond_1d
    const-string v10, ""

    invoke-static {p1, v3, v9, v8, v10}, Landroid/animation/AnimatorInflater;->getPVH(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    if-eqz v8, :cond_2c

    new-array v9, v0, [Landroid/animation/PropertyValuesHolder;

    aput-object v8, v9, v4

    invoke-virtual {p0, v9}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    :cond_2c
    invoke-virtual {p0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p0, v5, v6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const/4 v9, 0x3

    invoke-virtual {p1, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v10

    if-eqz v10, :cond_41

    nop

    invoke-virtual {p1, v9, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    :cond_41
    invoke-virtual {p1, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_4f

    nop

    invoke-virtual {p1, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    :cond_4f
    if-eqz p2, :cond_54

    invoke-static {p0, p2, v3, p3}, Landroid/animation/AnimatorInflater;->setupObjectAnimator(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;IF)V

    :cond_54
    return-void
.end method

.method private static setupAnimatorForPath(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;)Landroid/animation/TypeEvaluator;
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v1, :cond_10

    move-object v4, v3

    goto :goto_15

    :cond_10
    new-instance v4, Landroid/util/PathParser$PathData;

    invoke-direct {v4, v1}, Landroid/util/PathParser$PathData;-><init>(Ljava/lang/String;)V

    :goto_15
    if-nez v2, :cond_19

    move-object v5, v3

    goto :goto_1e

    :cond_19
    new-instance v5, Landroid/util/PathParser$PathData;

    invoke-direct {v5, v2}, Landroid/util/PathParser$PathData;-><init>(Ljava/lang/String;)V

    :goto_1e
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v4, :cond_6e

    if-eqz v5, :cond_60

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v4, v8, v6

    aput-object v5, v8, v7

    invoke-virtual {p0, v8}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    invoke-static {v4, v5}, Landroid/util/PathParser;->canMorph(Landroid/util/PathParser$PathData;Landroid/util/PathParser$PathData;)Z

    move-result v6

    if-eqz v6, :cond_35

    goto :goto_67

    :cond_35
    new-instance v3, Landroid/view/InflateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Can\'t morph from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_60
    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v6

    invoke-virtual {p0, v7}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    :goto_67
    new-instance v6, Landroid/animation/AnimatorInflater$PathDataEvaluator;

    invoke-direct {v6, v3}, Landroid/animation/AnimatorInflater$PathDataEvaluator;-><init>(Landroid/animation/AnimatorInflater$PathDataEvaluator-IA;)V

    move-object v0, v6

    goto :goto_7d

    :cond_6e
    if-eqz v5, :cond_7d

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v6

    invoke-virtual {p0, v7}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    new-instance v6, Landroid/animation/AnimatorInflater$PathDataEvaluator;

    invoke-direct {v6, v3}, Landroid/animation/AnimatorInflater$PathDataEvaluator;-><init>(Landroid/animation/AnimatorInflater$PathDataEvaluator-IA;)V

    move-object v0, v6

    :cond_7d
    :goto_7d
    return-object v0
.end method

.method private static setupObjectAnimator(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;IF)V
    .registers 20

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p0

    check-cast v2, Landroid/animation/ObjectAnimator;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_8e

    nop

    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-eq v1, v6, :cond_20

    const/4 v9, 0x4

    if-ne v1, v9, :cond_21

    :cond_20
    const/4 v1, 0x0

    :cond_21
    if-nez v7, :cond_43

    if-eqz v8, :cond_26

    goto :goto_43

    :cond_26
    new-instance v3, Landroid/view/InflateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " propertyXName or propertyYName is needed for PathData"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_43
    :goto_43
    invoke-static {v4}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v9

    const/high16 v10, 0x3f000000  # 0.5f

    mul-float v10, v10, p3

    invoke-static {v9, v10}, Landroid/animation/KeyframeSet;->ofPath(Landroid/graphics/Path;F)Landroid/animation/PathKeyframes;

    move-result-object v11

    if-nez v1, :cond_5a

    invoke-virtual {v11}, Landroid/animation/PathKeyframes;->createXFloatKeyframes()Landroid/animation/Keyframes$FloatKeyframes;

    move-result-object v12

    invoke-virtual {v11}, Landroid/animation/PathKeyframes;->createYFloatKeyframes()Landroid/animation/Keyframes$FloatKeyframes;

    move-result-object v13

    goto :goto_62

    :cond_5a
    invoke-virtual {v11}, Landroid/animation/PathKeyframes;->createXIntKeyframes()Landroid/animation/Keyframes$IntKeyframes;

    move-result-object v12

    invoke-virtual {v11}, Landroid/animation/PathKeyframes;->createYIntKeyframes()Landroid/animation/Keyframes$IntKeyframes;

    move-result-object v13

    :goto_62
    const/4 v14, 0x0

    const/4 v15, 0x0

    if-eqz v7, :cond_6a

    invoke-static {v7, v12}, Landroid/animation/PropertyValuesHolder;->ofKeyframes(Ljava/lang/String;Landroid/animation/Keyframes;)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    :cond_6a
    if-eqz v8, :cond_70

    invoke-static {v8, v13}, Landroid/animation/PropertyValuesHolder;->ofKeyframes(Ljava/lang/String;Landroid/animation/Keyframes;)Landroid/animation/PropertyValuesHolder;

    move-result-object v15

    :cond_70
    if-nez v14, :cond_7a

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    aput-object v15, v3, v5

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_8d

    :cond_7a
    if-nez v15, :cond_84

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    aput-object v14, v3, v5

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_8d

    :cond_84
    new-array v6, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v14, v6, v5

    aput-object v15, v6, v3

    invoke-virtual {v2, v6}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    :goto_8d
    goto :goto_96

    :cond_8e
    nop

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    :goto_96
    return-void
.end method

.method private static setupValues(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;ZZIZI)V
    .registers 15

    const/4 v0, 0x5

    const/4 v1, 0x6

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz p2, :cond_49

    if-eqz p3, :cond_35

    if-ne p4, v4, :cond_12

    invoke-virtual {p1, v0, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    goto :goto_16

    :cond_12
    invoke-virtual {p1, v0, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    :goto_16
    if-eqz p5, :cond_2d

    if-ne p6, v4, :cond_1f

    invoke-virtual {p1, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    goto :goto_23

    :cond_1f
    invoke-virtual {p1, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    :goto_23
    new-array v2, v2, [F

    aput v7, v2, v6

    aput v4, v2, v3

    invoke-virtual {p0, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_47

    :cond_2d
    new-array v2, v3, [F

    aput v7, v2, v6

    invoke-virtual {p0, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_47

    :cond_35
    if-ne p6, v4, :cond_3c

    invoke-virtual {p1, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    goto :goto_40

    :cond_3c
    invoke-virtual {p1, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    :goto_40
    new-array v3, v3, [F

    aput v2, v3, v6

    invoke-virtual {p0, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    :goto_47
    goto/16 :goto_ad

    :cond_49
    if-eqz p3, :cond_8d

    if-ne p4, v4, :cond_53

    invoke-virtual {p1, v0, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    float-to-int v7, v7

    goto :goto_62

    :cond_53
    invoke-static {p4}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v7

    if-eqz v7, :cond_5e

    invoke-virtual {p1, v0, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    goto :goto_62

    :cond_5e
    invoke-virtual {p1, v0, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    :goto_62
    if-eqz p5, :cond_85

    if-ne p6, v4, :cond_6c

    invoke-virtual {p1, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v4, v4

    goto :goto_7b

    :cond_6c
    invoke-static {p6}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v4

    if-eqz v4, :cond_77

    invoke-virtual {p1, v1, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    goto :goto_7b

    :cond_77
    invoke-virtual {p1, v1, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    :goto_7b
    new-array v2, v2, [I

    aput v7, v2, v6

    aput v4, v2, v3

    invoke-virtual {p0, v2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto :goto_ad

    :cond_85
    new-array v2, v3, [I

    aput v7, v2, v6

    invoke-virtual {p0, v2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto :goto_ad

    :cond_8d
    if-eqz p5, :cond_ad

    if-ne p6, v4, :cond_97

    invoke-virtual {p1, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    goto :goto_a6

    :cond_97
    invoke-static {p6}, Landroid/animation/AnimatorInflater;->isColorType(I)Z

    move-result v2

    if-eqz v2, :cond_a2

    invoke-virtual {p1, v1, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    goto :goto_a6

    :cond_a2
    invoke-virtual {p1, v1, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    :goto_a6
    new-array v3, v3, [I

    aput v2, v3, v6

    invoke-virtual {p0, v3}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    :cond_ad
    :goto_ad
    return-void
.end method
