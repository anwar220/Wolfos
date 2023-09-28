# classes.dex

.class public final Landroid/hardware/display/BrightnessConfiguration;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/BrightnessConfiguration$Builder;
    }
.end annotation


# static fields
.field private static final ATTR_CATEGORY:Ljava/lang/String; = "category"

.field private static final ATTR_COLLECT_COLOR:Ljava/lang/String; = "collect-color"

.field private static final ATTR_DESCRIPTION:Ljava/lang/String; = "description"

.field private static final ATTR_LUX:Ljava/lang/String; = "lux"

.field private static final ATTR_MODEL_LOWER_BOUND:Ljava/lang/String; = "model-lower-bound"

.field private static final ATTR_MODEL_TIMEOUT:Ljava/lang/String; = "model-timeout"

.field private static final ATTR_MODEL_UPPER_BOUND:Ljava/lang/String; = "model-upper-bound"

.field private static final ATTR_NITS:Ljava/lang/String; = "nits"

.field private static final ATTR_PACKAGE_NAME:Ljava/lang/String; = "package-name"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/display/BrightnessConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final SHORT_TERM_TIMEOUT_UNSET:J = -0x1L

.field private static final TAG_BRIGHTNESS_CORRECTION:Ljava/lang/String; = "brightness-correction"

.field private static final TAG_BRIGHTNESS_CORRECTIONS:Ljava/lang/String; = "brightness-corrections"

.field private static final TAG_BRIGHTNESS_CURVE:Ljava/lang/String; = "brightness-curve"

.field private static final TAG_BRIGHTNESS_PARAMS:Ljava/lang/String; = "brightness-params"

.field private static final TAG_BRIGHTNESS_POINT:Ljava/lang/String; = "brightness-point"


# instance fields
.field private final mCorrectionsByCategory:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/display/BrightnessCorrection;",
            ">;"
        }
    .end annotation
.end field

.field private final mCorrectionsByPackageName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/display/BrightnessCorrection;",
            ">;"
        }
    .end annotation
.end field

.field private final mDescription:Ljava/lang/String;

.field private final mLux:[F

.field private final mNits:[F

.field private final mShortTermModelLowerLuxMultiplier:F

.field private final mShortTermModelTimeout:J

.field private final mShortTermModelUpperLuxMultiplier:F

.field private final mShouldCollectColorSamples:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/hardware/display/BrightnessConfiguration$1;

    invoke-direct {v0}, Landroid/hardware/display/BrightnessConfiguration$1;-><init>()V

    sput-object v0, Landroid/hardware/display/BrightnessConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>([F[FLjava/util/Map;Ljava/util/Map;Ljava/lang/String;ZJFF)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F[F",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/display/BrightnessCorrection;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/display/BrightnessCorrection;",
            ">;",
            "Ljava/lang/String;",
            "ZJFF)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/display/BrightnessConfiguration;->mLux:[F

    iput-object p2, p0, Landroid/hardware/display/BrightnessConfiguration;->mNits:[F

    iput-object p3, p0, Landroid/hardware/display/BrightnessConfiguration;->mCorrectionsByPackageName:Ljava/util/Map;

    iput-object p4, p0, Landroid/hardware/display/BrightnessConfiguration;->mCorrectionsByCategory:Ljava/util/Map;

    iput-object p5, p0, Landroid/hardware/display/BrightnessConfiguration;->mDescription:Ljava/lang/String;

    iput-boolean p6, p0, Landroid/hardware/display/BrightnessConfiguration;->mShouldCollectColorSamples:Z

    iput-wide p7, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelTimeout:J

    iput p9, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelLowerLuxMultiplier:F

    iput p10, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelUpperLuxMultiplier:F

    return-void
.end method

.method synthetic constructor <init>([F[FLjava/util/Map;Ljava/util/Map;Ljava/lang/String;ZJFFLandroid/hardware/display/BrightnessConfiguration-IA;)V
    .registers 12

    invoke-direct/range {p0 .. p10}, Landroid/hardware/display/BrightnessConfiguration;-><init>([F[FLjava/util/Map;Ljava/util/Map;Ljava/lang/String;ZJFF)V

    return-void
.end method

.method private checkFloatEquals(FF)Z
    .registers 5

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_e

    return v1

    :cond_e
    cmpl-float v0, p1, p2

    if-nez v0, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1
.end method

.method private static loadFloatFromXml(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)F
    .registers 4

    const/4 v0, 0x0

    const/high16 v1, 0x7fc00000  # Float.NaN

    invoke-interface {p0, v0, p1, v1}, Landroid/util/TypedXmlPullParser;->getAttributeFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static loadFromXml(Landroid/util/TypedXmlPullParser;)Landroid/hardware/display/BrightnessConfiguration;
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const/4 v6, 0x0

    const-wide/16 v7, -0x1

    const/high16 v9, 0x7fc00000  # Float.NaN

    const/high16 v10, 0x7fc00000  # Float.NaN

    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v11

    :goto_22
    invoke-static {v0, v11}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v12

    if-eqz v12, :cond_f6

    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "brightness-curve"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const/4 v13, 0x0

    if-eqz v12, :cond_6f

    const-string v12, "description"

    invoke-interface {v0, v13, v12}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v12

    :goto_3f
    invoke-static {v0, v12}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v13

    if-eqz v13, :cond_6e

    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "brightness-point"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_52

    goto :goto_3f

    :cond_52
    const-string v13, "lux"

    invoke-static {v0, v13}, Landroid/hardware/display/BrightnessConfiguration;->loadFloatFromXml(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)F

    move-result v13

    const-string/jumbo v14, "nits"

    invoke-static {v0, v14}, Landroid/hardware/display/BrightnessConfiguration;->loadFloatFromXml(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)F

    move-result v14

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-interface {v3, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3f

    :cond_6e
    goto :goto_22

    :cond_6f
    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v14, "brightness-corrections"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_bc

    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v12

    :goto_7f
    invoke-static {v0, v12}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v14

    if-eqz v14, :cond_b9

    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "brightness-correction"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_92

    goto :goto_7f

    :cond_92
    const-string/jumbo v14, "package-name"

    invoke-interface {v0, v13, v14}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "category"

    move/from16 v16, v11

    const/4 v11, -0x1

    invoke-interface {v0, v13, v15, v11}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v15

    invoke-static/range {p0 .. p0}, Landroid/hardware/display/BrightnessCorrection;->loadFromXml(Landroid/util/TypedXmlPullParser;)Landroid/hardware/display/BrightnessCorrection;

    move-result-object v13

    if-eqz v14, :cond_ac

    invoke-interface {v4, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b5

    :cond_ac
    if-eq v15, v11, :cond_b5

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v5, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b5
    :goto_b5
    move/from16 v11, v16

    const/4 v13, 0x0

    goto :goto_7f

    :cond_b9
    move/from16 v16, v11

    goto :goto_f1

    :cond_bc
    move/from16 v16, v11

    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "brightness-params"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f1

    const/4 v11, 0x0

    const-string v12, "collect-color"

    const/4 v13, 0x0

    invoke-interface {v0, v13, v12, v11}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    const-string/jumbo v11, "model-timeout"

    invoke-static {v0, v11}, Landroid/hardware/display/BrightnessConfiguration;->loadLongFromXml(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    if-eqz v11, :cond_df

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    :cond_df
    const-string/jumbo v12, "model-lower-bound"

    invoke-static {v0, v12}, Landroid/hardware/display/BrightnessConfiguration;->loadFloatFromXml(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)F

    move-result v9

    const-string/jumbo v12, "model-upper-bound"

    invoke-static {v0, v12}, Landroid/hardware/display/BrightnessConfiguration;->loadFloatFromXml(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)F

    move-result v10

    move/from16 v11, v16

    goto/16 :goto_22

    :cond_f1
    :goto_f1
    nop

    move/from16 v11, v16

    goto/16 :goto_22

    :cond_f6
    move/from16 v16, v11

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    new-array v12, v11, [F

    new-array v13, v11, [F

    const/4 v14, 0x0

    :goto_101
    if-ge v14, v11, :cond_11e

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    aput v15, v12, v14

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v15

    aput v15, v13, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_101

    :cond_11e
    new-instance v14, Landroid/hardware/display/BrightnessConfiguration$Builder;

    invoke-direct {v14, v12, v13}, Landroid/hardware/display/BrightnessConfiguration$Builder;-><init>([F[F)V

    invoke-virtual {v14, v1}, Landroid/hardware/display/BrightnessConfiguration$Builder;->setDescription(Ljava/lang/String;)Landroid/hardware/display/BrightnessConfiguration$Builder;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_12e
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_154

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, Ljava/lang/String;

    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v1

    move-object/from16 v1, v18

    check-cast v1, Landroid/hardware/display/BrightnessCorrection;

    invoke-virtual {v14, v0, v1}, Landroid/hardware/display/BrightnessConfiguration$Builder;->addCorrectionByPackageName(Ljava/lang/String;Landroid/hardware/display/BrightnessCorrection;)Landroid/hardware/display/BrightnessConfiguration$Builder;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    goto :goto_12e

    :cond_154
    move-object/from16 v19, v1

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_184

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    check-cast v0, Landroid/hardware/display/BrightnessCorrection;

    invoke-virtual {v14, v15, v0}, Landroid/hardware/display/BrightnessConfiguration$Builder;->addCorrectionByCategory(ILandroid/hardware/display/BrightnessCorrection;)Landroid/hardware/display/BrightnessConfiguration$Builder;

    move-object/from16 v0, v18

    goto :goto_15e

    :cond_184
    invoke-virtual {v14, v6}, Landroid/hardware/display/BrightnessConfiguration$Builder;->setShouldCollectColorSamples(Z)Landroid/hardware/display/BrightnessConfiguration$Builder;

    invoke-virtual {v14, v7, v8}, Landroid/hardware/display/BrightnessConfiguration$Builder;->setShortTermModelTimeoutMillis(J)Landroid/hardware/display/BrightnessConfiguration$Builder;

    invoke-virtual {v14, v9}, Landroid/hardware/display/BrightnessConfiguration$Builder;->setShortTermModelLowerLuxMultiplier(F)Landroid/hardware/display/BrightnessConfiguration$Builder;

    invoke-virtual {v14, v10}, Landroid/hardware/display/BrightnessConfiguration$Builder;->setShortTermModelUpperLuxMultiplier(F)Landroid/hardware/display/BrightnessConfiguration$Builder;

    invoke-virtual {v14}, Landroid/hardware/display/BrightnessConfiguration$Builder;->build()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v0

    return-object v0
.end method

.method private static loadLongFromXml(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/Long;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p0, v0, p1}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_a

    return-object v0

    :catch_a
    move-exception v1

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Landroid/hardware/display/BrightnessConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/hardware/display/BrightnessConfiguration;

    iget-object v3, p0, Landroid/hardware/display/BrightnessConfiguration;->mLux:[F

    iget-object v4, v1, Landroid/hardware/display/BrightnessConfiguration;->mLux:[F

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-eqz v3, :cond_62

    iget-object v3, p0, Landroid/hardware/display/BrightnessConfiguration;->mNits:[F

    iget-object v4, v1, Landroid/hardware/display/BrightnessConfiguration;->mNits:[F

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-eqz v3, :cond_62

    iget-object v3, p0, Landroid/hardware/display/BrightnessConfiguration;->mCorrectionsByPackageName:Ljava/util/Map;

    iget-object v4, v1, Landroid/hardware/display/BrightnessConfiguration;->mCorrectionsByPackageName:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_62

    iget-object v3, p0, Landroid/hardware/display/BrightnessConfiguration;->mCorrectionsByCategory:Ljava/util/Map;

    iget-object v4, v1, Landroid/hardware/display/BrightnessConfiguration;->mCorrectionsByCategory:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_62

    iget-object v3, p0, Landroid/hardware/display/BrightnessConfiguration;->mDescription:Ljava/lang/String;

    iget-object v4, v1, Landroid/hardware/display/BrightnessConfiguration;->mDescription:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_62

    iget-boolean v3, p0, Landroid/hardware/display/BrightnessConfiguration;->mShouldCollectColorSamples:Z

    iget-boolean v4, v1, Landroid/hardware/display/BrightnessConfiguration;->mShouldCollectColorSamples:Z

    if-ne v3, v4, :cond_62

    iget-wide v3, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelTimeout:J

    iget-wide v5, v1, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelTimeout:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_62

    iget v3, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelLowerLuxMultiplier:F

    iget v4, v1, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelLowerLuxMultiplier:F

    invoke-direct {p0, v3, v4}, Landroid/hardware/display/BrightnessConfiguration;->checkFloatEquals(FF)Z

    move-result v3

    if-eqz v3, :cond_62

    iget v3, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelUpperLuxMultiplier:F

    iget v4, v1, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelUpperLuxMultiplier:F

    invoke-direct {p0, v3, v4}, Landroid/hardware/display/BrightnessConfiguration;->checkFloatEquals(FF)Z

    move-result v3

    if-eqz v3, :cond_62

    goto :goto_63

    :cond_62
    move v0, v2

    :goto_63
    return v0
.end method

.method public getCorrectionByCategory(I)Landroid/hardware/display/BrightnessCorrection;
    .registers 4

    iget-object v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mCorrectionsByCategory:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/BrightnessCorrection;

    return-object v0
.end method

.method public getCorrectionByPackageName(Ljava/lang/String;)Landroid/hardware/display/BrightnessCorrection;
    .registers 3

    iget-object v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mCorrectionsByPackageName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/BrightnessCorrection;

    return-object v0
.end method

.method public getCurve()Landroid/util/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "[F[F>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mLux:[F

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/BrightnessConfiguration;->mNits:[F

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getShortTermModelLowerLuxMultiplier()F
    .registers 2

    iget v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelLowerLuxMultiplier:F

    return v0
.end method

.method public getShortTermModelTimeoutMillis()J
    .registers 3

    iget-wide v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelTimeout:J

    return-wide v0
.end method

.method public getShortTermModelUpperLuxMultiplier()F
    .registers 2

    iget v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelUpperLuxMultiplier:F

    return v0
.end method

.method public hashCode()I
    .registers 5

    const/4 v0, 0x1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mLux:[F

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([F)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mNits:[F

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mCorrectionsByPackageName:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mCorrectionsByCategory:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v1, p0, Landroid/hardware/display/BrightnessConfiguration;->mDescription:Ljava/lang/String;

    if-eqz v1, :cond_31

    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int v0, v2, v1

    :cond_31
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mShouldCollectColorSamples:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelTimeout:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelLowerLuxMultiplier:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelUpperLuxMultiplier:F

    invoke-static {v2}, Ljava/lang/Float;->hashCode(F)I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public saveToXml(Landroid/util/TypedXmlSerializer;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "brightness-curve"

    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mDescription:Ljava/lang/String;

    if-eqz v2, :cond_f

    const-string v3, "description"

    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_f
    const/4 v2, 0x0

    :goto_10
    iget-object v3, p0, Landroid/hardware/display/BrightnessConfiguration;->mLux:[F

    array-length v3, v3

    if-ge v2, v3, :cond_33

    const-string v3, "brightness-point"

    invoke-interface {p1, v0, v3}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v4, p0, Landroid/hardware/display/BrightnessConfiguration;->mLux:[F

    aget v4, v4, v2

    const-string v5, "lux"

    invoke-interface {p1, v0, v5, v4}, Landroid/util/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v4, p0, Landroid/hardware/display/BrightnessConfiguration;->mNits:[F

    aget v4, v4, v2

    const-string/jumbo v5, "nits"

    invoke-interface {p1, v0, v5, v4}, Landroid/util/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1, v0, v3}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_33
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "brightness-corrections"

    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mCorrectionsByPackageName:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_45
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "brightness-correction"

    if-eqz v3, :cond_6f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/display/BrightnessCorrection;

    invoke-interface {p1, v0, v4}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "package-name"

    invoke-interface {p1, v0, v7, v5}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v6, p1}, Landroid/hardware/display/BrightnessCorrection;->saveToXml(Landroid/util/TypedXmlSerializer;)V

    invoke-interface {p1, v0, v4}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_45

    :cond_6f
    iget-object v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mCorrectionsByCategory:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_79
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/display/BrightnessCorrection;

    invoke-interface {p1, v0, v4}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "category"

    invoke-interface {p1, v0, v7, v5}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v6, p1}, Landroid/hardware/display/BrightnessCorrection;->saveToXml(Landroid/util/TypedXmlSerializer;)V

    invoke-interface {p1, v0, v4}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_79

    :cond_a4
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "brightness-params"

    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-boolean v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mShouldCollectColorSamples:Z

    if-eqz v2, :cond_b6

    const-string v2, "collect-color"

    const/4 v3, 0x1

    invoke-interface {p1, v0, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    :cond_b6
    iget-wide v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelTimeout:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_c4

    const-string/jumbo v4, "model-timeout"

    invoke-interface {p1, v0, v4, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    :cond_c4
    iget v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelLowerLuxMultiplier:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_d4

    iget v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelLowerLuxMultiplier:F

    const-string/jumbo v3, "model-lower-bound"

    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    :cond_d4
    iget v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelUpperLuxMultiplier:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_e4

    iget v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelUpperLuxMultiplier:F

    const-string/jumbo v3, "model-upper-bound"

    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    :cond_e4
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public shouldCollectColorSamples()Z
    .registers 2

    iget-boolean v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mShouldCollectColorSamples:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BrightnessConfiguration{["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/hardware/display/BrightnessConfiguration;->mLux:[F

    array-length v1, v1

    const/4 v2, 0x0

    :goto_b
    const-string v3, ", "

    if-ge v2, v1, :cond_36

    if-eqz v2, :cond_14

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    const-string v4, "("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/hardware/display/BrightnessConfiguration;->mLux:[F

    aget v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/display/BrightnessConfiguration;->mNits:[F

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_36
    const-string v2, "], {"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mCorrectionsByPackageName:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_45
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_80

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\': "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_45

    :cond_80
    iget-object v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mCorrectionsByCategory:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_bd

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8a

    :cond_bd
    const-string/jumbo v2, "}, \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mDescription:Ljava/lang/String;

    if-eqz v2, :cond_ca

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_ca
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", shouldCollectColorSamples = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/hardware/display/BrightnessConfiguration;->mShouldCollectColorSamples:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelTimeout:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_102

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", shortTermModelTimeout = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelTimeout:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_102
    iget v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelLowerLuxMultiplier:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_122

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", shortTermModelLowerLuxMultiplier = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelLowerLuxMultiplier:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_122
    iget v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelLowerLuxMultiplier:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_142

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", shortTermModelUpperLuxMultiplier = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelUpperLuxMultiplier:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_142
    const-string v2, "\'}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    iget-object v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mLux:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    iget-object v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mNits:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    iget-object v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mCorrectionsByPackageName:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mCorrectionsByPackageName:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/BrightnessCorrection;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Landroid/hardware/display/BrightnessCorrection;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1d

    :cond_3c
    iget-object v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mCorrectionsByCategory:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mCorrectionsByCategory:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_72

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/BrightnessCorrection;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, p1, p2}, Landroid/hardware/display/BrightnessCorrection;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4f

    :cond_72
    iget-object v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mShouldCollectColorSamples:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-wide v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelTimeout:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelLowerLuxMultiplier:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mShortTermModelUpperLuxMultiplier:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
