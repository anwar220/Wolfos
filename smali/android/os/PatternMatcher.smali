# classes3.dex

.class public Landroid/os/PatternMatcher;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/PatternMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_PATTERN_STORAGE:I = 0x800

.field private static final NO_MATCH:I = -0x1

.field private static final PARSED_MODIFIER_ONE_OR_MORE:I = -0x8

.field private static final PARSED_MODIFIER_RANGE_START:I = -0x5

.field private static final PARSED_MODIFIER_RANGE_STOP:I = -0x6

.field private static final PARSED_MODIFIER_ZERO_OR_MORE:I = -0x7

.field private static final PARSED_TOKEN_CHAR_ANY:I = -0x4

.field private static final PARSED_TOKEN_CHAR_SET_INVERSE_START:I = -0x2

.field private static final PARSED_TOKEN_CHAR_SET_START:I = -0x1

.field private static final PARSED_TOKEN_CHAR_SET_STOP:I = -0x3

.field public static final PATTERN_ADVANCED_GLOB:I = 0x3

.field public static final PATTERN_LITERAL:I = 0x0

.field public static final PATTERN_PREFIX:I = 0x1

.field public static final PATTERN_SIMPLE_GLOB:I = 0x2

.field public static final PATTERN_SUFFIX:I = 0x4

.field private static final TAG:Ljava/lang/String; = "PatternMatcher"

.field private static final TOKEN_TYPE_ANY:I = 0x1

.field private static final TOKEN_TYPE_INVERSE_SET:I = 0x3

.field private static final TOKEN_TYPE_LITERAL:I = 0x0

.field private static final TOKEN_TYPE_SET:I = 0x2

.field private static final sParsedPatternScratch:[I


# instance fields
.field private final mParsedPattern:[I

.field private final mPattern:Ljava/lang/String;

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x800

    new-array v0, v0, [I

    sput-object v0, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    new-instance v0, Landroid/os/PatternMatcher$1;

    invoke-direct {v0}, Landroid/os/PatternMatcher$1;-><init>()V

    sput-object v0, Landroid/os/PatternMatcher;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/PatternMatcher;->mType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/PatternMatcher;->mParsedPattern:[I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    iput p2, p0, Landroid/os/PatternMatcher;->mType:I

    const/4 v0, 0x3

    if-ne p2, v0, :cond_11

    invoke-static {p1}, Landroid/os/PatternMatcher;->parseAndVerifyAdvancedPattern(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/PatternMatcher;->mParsedPattern:[I

    goto :goto_14

    :cond_11
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/PatternMatcher;->mParsedPattern:[I

    :goto_14
    return-void
.end method

.method private static isParsedModifier(I)Z
    .registers 2

    const/4 v0, -0x8

    if-eq p0, v0, :cond_f

    const/4 v0, -0x7

    if-eq p0, v0, :cond_f

    const/4 v0, -0x6

    if-eq p0, v0, :cond_f

    const/4 v0, -0x5

    if-ne p0, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method static matchAdvancedPattern([ILjava/lang/String;)Z
    .registers 24

    move-object/from16 v9, p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    array-length v10, v9

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v12, v1

    :goto_c
    const/4 v13, 0x0

    const/4 v1, 0x1

    if-ge v0, v10, :cond_a6

    aget v4, v9, v0

    const/4 v5, 0x2

    const/4 v14, -0x1

    packed-switch v4, :pswitch_data_ac

    :pswitch_17  #0xfffffffd
    move v2, v0

    const/4 v6, 0x0

    add-int/lit8 v0, v0, 0x1

    move v15, v2

    move/from16 v16, v3

    move/from16 v17, v6

    goto :goto_44

    :pswitch_21  #0xfffffffe, 0xffffffff
    if-ne v4, v14, :cond_25

    move v6, v5

    goto :goto_26

    :cond_25
    const/4 v6, 0x3

    :goto_26
    nop

    add-int/lit8 v2, v0, 0x1

    :goto_29
    add-int/2addr v0, v1

    if-ge v0, v10, :cond_32

    aget v7, v9, v0

    const/4 v8, -0x3

    if-eq v7, v8, :cond_32

    goto :goto_29

    :cond_32
    add-int/lit8 v3, v0, -0x1

    add-int/lit8 v0, v0, 0x1

    move v15, v2

    move/from16 v16, v3

    move/from16 v17, v6

    goto :goto_44

    :pswitch_3c  #0xfffffffc
    const/4 v6, 0x1

    add-int/lit8 v0, v0, 0x1

    move v15, v2

    move/from16 v16, v3

    move/from16 v17, v6

    :goto_44
    if-lt v0, v10, :cond_4e

    move v2, v1

    move/from16 v18, v0

    move v8, v1

    move v7, v2

    move/from16 v19, v4

    goto :goto_83

    :cond_4e
    aget v4, v9, v0

    packed-switch v4, :pswitch_data_b8

    :pswitch_53  #0xfffffffa
    move v2, v1

    move/from16 v18, v0

    move v8, v1

    move v7, v2

    move/from16 v19, v4

    goto :goto_83

    :pswitch_5b  #0xfffffffb
    add-int/lit8 v0, v0, 0x1

    aget v2, v9, v0

    add-int/2addr v0, v1

    aget v1, v9, v0

    add-int/2addr v0, v5

    move/from16 v18, v0

    move v7, v1

    move v8, v2

    move/from16 v19, v4

    goto :goto_83

    :pswitch_6a  #0xfffffff9
    const/4 v1, 0x0

    const v2, 0x7fffffff

    add-int/lit8 v0, v0, 0x1

    move/from16 v18, v0

    move v8, v1

    move v7, v2

    move/from16 v19, v4

    goto :goto_83

    :pswitch_77  #0xfffffff8
    const/4 v1, 0x1

    const v2, 0x7fffffff

    add-int/lit8 v0, v0, 0x1

    move/from16 v18, v0

    move v8, v1

    move v7, v2

    move/from16 v19, v4

    :goto_83
    if-le v8, v7, :cond_86

    return v13

    :cond_86
    move-object/from16 v0, p1

    move v1, v12

    move v2, v11

    move/from16 v3, v17

    move v4, v8

    move v5, v7

    move-object/from16 v6, p0

    move/from16 v20, v7

    move v7, v15

    move/from16 v21, v8

    move/from16 v8, v16

    invoke-static/range {v0 .. v8}, Landroid/os/PatternMatcher;->matchChars(Ljava/lang/String;IIIII[III)I

    move-result v0

    if-ne v0, v14, :cond_9e

    return v13

    :cond_9e
    add-int/2addr v12, v0

    move v2, v15

    move/from16 v3, v16

    move/from16 v0, v18

    goto/16 :goto_c

    :cond_a6
    if-lt v0, v10, :cond_ab

    if-lt v12, v11, :cond_ab

    move v13, v1

    :cond_ab
    return v13

    :pswitch_data_ac
    .packed-switch -0x4
        :pswitch_3c  #fffffffc
        :pswitch_17  #fffffffd
        :pswitch_21  #fffffffe
        :pswitch_21  #ffffffff
    .end packed-switch

    :pswitch_data_b8
    .packed-switch -0x8
        :pswitch_77  #fffffff8
        :pswitch_6a  #fffffff9
        :pswitch_53  #fffffffa
        :pswitch_5b  #fffffffb
    .end packed-switch
.end method

.method private static matchChar(Ljava/lang/String;III[III)Z
    .registers 12

    const/4 v0, 0x0

    if-lt p1, p2, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    packed-switch p3, :pswitch_data_40

    return v0

    :pswitch_9  #0x3
    move v2, p5

    :goto_a
    if-ge v2, p6, :cond_1e

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aget v4, p4, v2

    if-lt v3, v4, :cond_1b

    add-int/lit8 v4, v2, 0x1

    aget v4, p4, v4

    if-gt v3, v4, :cond_1b

    return v0

    :cond_1b
    add-int/lit8 v2, v2, 0x2

    goto :goto_a

    :cond_1e
    return v1

    :pswitch_1f  #0x2
    move v2, p5

    :goto_20
    if-ge v2, p6, :cond_34

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aget v4, p4, v2

    if-lt v3, v4, :cond_31

    add-int/lit8 v4, v2, 0x1

    aget v4, p4, v4

    if-gt v3, v4, :cond_31

    return v1

    :cond_31
    add-int/lit8 v2, v2, 0x2

    goto :goto_20

    :cond_34
    return v0

    :pswitch_35  #0x1
    return v1

    :pswitch_36  #0x0
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aget v3, p4, p5

    if-ne v2, v3, :cond_3f

    move v0, v1

    :cond_3f
    return v0

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_36  #00000000
        :pswitch_35  #00000001
        :pswitch_1f  #00000002
        :pswitch_9  #00000003
    .end packed-switch
.end method

.method private static matchChars(Ljava/lang/String;IIIII[III)I
    .registers 18

    const/4 v0, 0x0

    :goto_1
    move v1, p5

    if-ge v0, v1, :cond_17

    add-int v3, p1, v0

    move-object v2, p0

    move v4, p2

    move v5, p3

    move-object v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v2 .. v8}, Landroid/os/PatternMatcher;->matchChar(Ljava/lang/String;III[III)Z

    move-result v2

    if-eqz v2, :cond_17

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    move v2, p4

    if-ge v0, v2, :cond_1c

    const/4 v3, -0x1

    goto :goto_1d

    :cond_1c
    move v3, v0

    :goto_1d
    return v3
.end method

.method static matchGlobPattern(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 15

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gtz v0, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_f

    move v1, v2

    :cond_f
    return v1

    :cond_10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    :goto_1a
    const/16 v7, 0x2a

    const/16 v8, 0x2e

    if-ge v4, v0, :cond_a1

    if-ge v5, v3, :cond_a1

    move v9, v6

    add-int/lit8 v4, v4, 0x1

    if-ge v4, v0, :cond_2c

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_2d

    :cond_2c
    move v10, v1

    :goto_2d
    move v6, v10

    const/16 v10, 0x5c

    if-ne v9, v10, :cond_34

    move v11, v2

    goto :goto_35

    :cond_34
    move v11, v1

    :goto_35
    if-eqz v11, :cond_43

    move v9, v6

    add-int/lit8 v4, v4, 0x1

    if-ge v4, v0, :cond_41

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v12

    goto :goto_42

    :cond_41
    move v12, v1

    :goto_42
    move v6, v12

    :cond_43
    if-ne v6, v7, :cond_94

    if-nez v11, :cond_7d

    if-ne v9, v8, :cond_7d

    add-int/lit8 v7, v0, -0x1

    if-lt v4, v7, :cond_4e

    return v2

    :cond_4e
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v10, :cond_61

    add-int/lit8 v4, v4, 0x1

    if-ge v4, v0, :cond_5f

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_60

    :cond_5f
    move v7, v1

    :goto_60
    move v6, v7

    :cond_61
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v6, :cond_68

    goto :goto_6c

    :cond_68
    add-int/lit8 v5, v5, 0x1

    if-lt v5, v3, :cond_61

    :goto_6c
    if-ne v5, v3, :cond_6f

    return v1

    :cond_6f
    add-int/lit8 v4, v4, 0x1

    if-ge v4, v0, :cond_78

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_79

    :cond_78
    move v7, v1

    :goto_79
    move v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_9f

    :cond_7d
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v9, :cond_84

    goto :goto_88

    :cond_84
    add-int/lit8 v5, v5, 0x1

    if-lt v5, v3, :cond_7d

    :goto_88
    add-int/lit8 v4, v4, 0x1

    if-ge v4, v0, :cond_91

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_92

    :cond_91
    move v7, v1

    :goto_92
    move v6, v7

    goto :goto_9f

    :cond_94
    if-eq v9, v8, :cond_9d

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v9, :cond_9d

    return v1

    :cond_9d
    add-int/lit8 v5, v5, 0x1

    :goto_9f
    goto/16 :goto_1a

    :cond_a1
    if-lt v4, v0, :cond_a6

    if-lt v5, v3, :cond_a6

    return v2

    :cond_a6
    add-int/lit8 v9, v0, -0x2

    if-ne v4, v9, :cond_b9

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v8, :cond_b9

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v7, :cond_b9

    return v2

    :cond_b9
    return v1
.end method

.method static matchPattern(Ljava/lang/String;Ljava/lang/String;[II)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    if-nez p3, :cond_b

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_b
    const/4 v1, 0x1

    if-ne p3, v1, :cond_13

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_13
    const/4 v1, 0x2

    if-ne p3, v1, :cond_1b

    invoke-static {p1, p0}, Landroid/os/PatternMatcher;->matchGlobPattern(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_1b
    const/4 v1, 0x3

    if-ne p3, v1, :cond_23

    invoke-static {p2, p0}, Landroid/os/PatternMatcher;->matchAdvancedPattern([ILjava/lang/String;)Z

    move-result v0

    return v0

    :cond_23
    const/4 v1, 0x4

    if-ne p3, v1, :cond_2b

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_2b
    return v0
.end method

.method static declared-synchronized parseAndVerifyAdvancedPattern(Ljava/lang/String;)[I
    .registers 18

    move-object/from16 v1, p0

    const-class v2, Landroid/os/PatternMatcher;

    monitor-enter v2

    const/4 v0, 0x0

    :try_start_6
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_e
    if-ge v0, v3, :cond_1ca

    const/16 v8, 0x7fd

    if-gt v4, v8, :cond_1c2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/4 v9, 0x0

    const/4 v10, -0x2

    const/4 v11, -0x1

    sparse-switch v8, :sswitch_data_1e0

    const/4 v9, 0x1

    move v11, v4

    move v4, v0

    goto/16 :goto_105

    :sswitch_23
    if-eqz v6, :cond_103

    sget-object v10, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v11, v4, 0x1

    const/4 v12, -0x6

    aput v12, v10, v4

    const/4 v4, 0x0

    move v6, v4

    move v4, v0

    goto/16 :goto_105

    :sswitch_31
    if-nez v5, :cond_103

    if-eqz v4, :cond_4d

    sget-object v10, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v11, v4, -0x1

    aget v11, v10, v11

    invoke-static {v11}, Landroid/os/PatternMatcher;->isParsedModifier(I)Z

    move-result v11

    if-nez v11, :cond_4d

    add-int/lit8 v11, v4, 0x1

    const/4 v12, -0x5

    aput v12, v10, v4

    add-int/lit8 v0, v0, 0x1

    const/4 v4, 0x1

    move v6, v4

    move v4, v0

    goto/16 :goto_105

    :cond_4d
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Modifier must follow a token."

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :sswitch_55
    if-nez v5, :cond_5c

    const/4 v9, 0x1

    move v11, v4

    move v4, v0

    goto/16 :goto_105

    :cond_5c
    sget-object v12, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v13, v4, -0x1

    aget v13, v12, v13

    if-eq v13, v11, :cond_73

    if-eq v13, v10, :cond_73

    add-int/lit8 v10, v4, 0x1

    const/4 v11, -0x3

    aput v11, v12, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v7, v5

    move v11, v10

    move v5, v4

    move v4, v0

    goto/16 :goto_105

    :cond_73
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "You must define characters in a set."

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :sswitch_7b
    add-int/lit8 v10, v0, 0x1

    if-ge v10, v3, :cond_8b

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v10

    move v8, v10

    const/4 v9, 0x1

    move v11, v4

    move v4, v0

    goto/16 :goto_105

    :cond_8b
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Escape found at end of pattern!"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :sswitch_93
    if-eqz v5, :cond_9a

    const/4 v9, 0x1

    move v11, v4

    move v4, v0

    goto/16 :goto_105

    :cond_9a
    add-int/lit8 v12, v0, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x5e

    if-ne v12, v13, :cond_ae

    sget-object v11, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v12, v4, 0x1

    aput v10, v11, v4

    add-int/lit8 v0, v0, 0x1

    move v4, v12

    goto :goto_b5

    :cond_ae
    sget-object v10, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v12, v4, 0x1

    aput v11, v10, v4

    move v4, v12

    :goto_b5
    add-int/lit8 v0, v0, 0x1

    const/4 v5, 0x1

    goto/16 :goto_e

    :sswitch_ba
    if-nez v5, :cond_103

    sget-object v10, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v11, v4, 0x1

    const/4 v12, -0x4

    aput v12, v10, v4

    move v4, v0

    goto :goto_105

    :sswitch_c5
    if-nez v5, :cond_103

    if-eqz v4, :cond_dc

    sget-object v10, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v11, v4, -0x1

    aget v11, v10, v11

    invoke-static {v11}, Landroid/os/PatternMatcher;->isParsedModifier(I)Z

    move-result v11

    if-nez v11, :cond_dc

    add-int/lit8 v11, v4, 0x1

    const/4 v12, -0x8

    aput v12, v10, v4

    move v4, v0

    goto :goto_105

    :cond_dc
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Modifier must follow a token."

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :sswitch_e4
    if-nez v5, :cond_103

    if-eqz v4, :cond_fb

    sget-object v10, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v11, v4, -0x1

    aget v11, v10, v11

    invoke-static {v11}, Landroid/os/PatternMatcher;->isParsedModifier(I)Z

    move-result v11

    if-nez v11, :cond_fb

    add-int/lit8 v11, v4, 0x1

    const/4 v12, -0x7

    aput v12, v10, v4

    move v4, v0

    goto :goto_105

    :cond_fb
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Modifier must follow a token."

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_103
    move v11, v4

    move v4, v0

    :goto_105
    if-eqz v5, :cond_144

    if-eqz v7, :cond_113

    sget-object v0, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v10, v11, 0x1

    aput v8, v0, v11

    const/4 v0, 0x0

    move v7, v0

    goto/16 :goto_1bc

    :cond_113
    add-int/lit8 v0, v4, 0x2

    if-ge v0, v3, :cond_137

    add-int/lit8 v0, v4, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v10, 0x2d

    if-ne v0, v10, :cond_137

    add-int/lit8 v0, v4, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v10, 0x5d

    if-eq v0, v10, :cond_137

    const/4 v0, 0x1

    sget-object v7, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v10, v11, 0x1

    aput v8, v7, v11

    add-int/lit8 v4, v4, 0x1

    move v7, v0

    goto/16 :goto_1bc

    :cond_137
    sget-object v0, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v10, v11, 0x1

    aput v8, v0, v11

    add-int/lit8 v11, v10, 0x1

    aput v8, v0, v10

    move v10, v11

    goto/16 :goto_1bc

    :cond_144
    if-eqz v6, :cond_1b2

    const/16 v0, 0x7d

    invoke-virtual {v1, v0, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    move v10, v0

    if-ltz v10, :cond_1aa

    invoke-virtual {v1, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    const/16 v0, 0x2c

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0
    :try_end_15a
    .catchall {:try_start_6 .. :try_end_15a} :catchall_1dc

    move v13, v0

    if-gez v13, :cond_163

    :try_start_15d
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v14, v0

    goto :goto_182

    :cond_163
    const/4 v0, 0x0

    invoke-virtual {v12, v0, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    if-ne v13, v14, :cond_178

    const v14, 0x7fffffff

    goto :goto_182

    :cond_178
    add-int/lit8 v14, v13, 0x1

    invoke-virtual {v12, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    :goto_182
    if-gt v0, v14, :cond_197

    sget-object v15, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I
    :try_end_186
    .catch Ljava/lang/NumberFormatException; {:try_start_15d .. :try_end_186} :catch_1a1
    .catchall {:try_start_15d .. :try_end_186} :catchall_1dc

    add-int/lit8 v16, v11, 0x1

    :try_start_188
    aput v0, v15, v11
    :try_end_18a
    .catch Ljava/lang/NumberFormatException; {:try_start_188 .. :try_end_18a} :catch_193
    .catchall {:try_start_188 .. :try_end_18a} :catchall_1dc

    add-int/lit8 v11, v16, 0x1

    :try_start_18c
    aput v14, v15, v16

    nop

    move v0, v10

    move v4, v11

    goto/16 :goto_e

    :catch_193
    move-exception v0

    move/from16 v11, v16

    goto :goto_1a2

    :cond_197
    new-instance v15, Ljava/lang/IllegalArgumentException;

    move/from16 v16, v0

    const-string v0, "Range quantifier minimum is greater than maximum"

    invoke-direct {v15, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_1a1
    .catch Ljava/lang/NumberFormatException; {:try_start_18c .. :try_end_1a1} :catch_1a1
    .catchall {:try_start_18c .. :try_end_1a1} :catchall_1dc

    :catch_1a1
    move-exception v0

    :goto_1a2
    :try_start_1a2
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "Range number format incorrect"

    invoke-direct {v14, v15, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    :cond_1aa
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v12, "Range not ended with \'}\'"

    invoke-direct {v0, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b2
    if-eqz v9, :cond_1bb

    sget-object v0, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    add-int/lit8 v10, v11, 0x1

    aput v8, v0, v11

    goto :goto_1bc

    :cond_1bb
    move v10, v11

    :goto_1bc
    nop

    add-int/lit8 v0, v4, 0x1

    move v4, v10

    goto/16 :goto_e

    :cond_1c2
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Pattern is too large!"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1ca
    if-nez v5, :cond_1d4

    sget-object v8, Landroid/os/PatternMatcher;->sParsedPatternScratch:[I

    invoke-static {v8, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v8
    :try_end_1d2
    .catchall {:try_start_1a2 .. :try_end_1d2} :catchall_1dc

    monitor-exit v2

    return-object v8

    :cond_1d4
    :try_start_1d4
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Set was not terminated!"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1dc
    .catchall {:try_start_1d4 .. :try_end_1dc} :catchall_1dc

    :catchall_1dc
    move-exception v0

    monitor-exit v2

    throw v0

    nop

    :sswitch_data_1e0
    .sparse-switch
        0x2a -> :sswitch_e4
        0x2b -> :sswitch_c5
        0x2e -> :sswitch_ba
        0x5b -> :sswitch_93
        0x5c -> :sswitch_7b
        0x5d -> :sswitch_55
        0x7b -> :sswitch_31
        0x7d -> :sswitch_23
    .end sparse-switch
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget-object v2, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget v2, p0, Landroid/os/PatternMatcher;->mType:I

    const-wide v3, 0x10e00000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final getPath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()I
    .registers 2

    iget v0, p0, Landroid/os/PatternMatcher;->mType:I

    return v0
.end method

.method public match(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    iget-object v1, p0, Landroid/os/PatternMatcher;->mParsedPattern:[I

    iget v2, p0, Landroid/os/PatternMatcher;->mType:I

    invoke-static {p1, v0, v1, v2}, Landroid/os/PatternMatcher;->matchPattern(Ljava/lang/String;Ljava/lang/String;[II)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const-string v0, "? "

    iget v1, p0, Landroid/os/PatternMatcher;->mType:I

    packed-switch v1, :pswitch_data_38

    goto :goto_17

    :pswitch_8  #0x4
    const-string v0, "SUFFIX: "

    goto :goto_17

    :pswitch_b  #0x3
    const-string v0, "ADVANCED: "

    goto :goto_17

    :pswitch_e  #0x2
    const-string v0, "GLOB: "

    goto :goto_17

    :pswitch_11  #0x1
    const-string v0, "PREFIX: "

    goto :goto_17

    :pswitch_14  #0x0
    const-string v0, "LITERAL: "

    nop

    :goto_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PatternMatcher{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_14  #00000000
        :pswitch_11  #00000001
        :pswitch_e  #00000002
        :pswitch_b  #00000003
        :pswitch_8  #00000004
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/os/PatternMatcher;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/os/PatternMatcher;->mParsedPattern:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void
.end method
