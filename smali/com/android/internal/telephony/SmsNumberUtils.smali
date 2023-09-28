# classes4.dex

.class public Lcom/android/internal/telephony/SmsNumberUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;
    }
.end annotation


# static fields
.field private static ALL_COUNTRY_CODES:[I = null

.field private static final CDMA_HOME_NETWORK:I = 0x1

.field private static final CDMA_ROAMING_NETWORK:I = 0x2

.field private static final DBG:Z

.field private static final GSM_UMTS_NETWORK:I = 0x0

.field private static IDDS_MAPS:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static MAX_COUNTRY_CODES_LENGTH:I = 0x0

.field private static final MIN_COUNTRY_AREA_LOCAL_LENGTH:I = 0xa

.field private static final NANP_CC:I = 0x1

.field private static final NANP_IDD:Ljava/lang/String; = "011"

.field private static final NANP_LONG_LENGTH:I = 0xb

.field private static final NANP_MEDIUM_LENGTH:I = 0xa

.field private static final NANP_NDD:Ljava/lang/String; = "1"

.field private static final NANP_SHORT_LENGTH:I = 0x7

.field private static final NP_CC_AREA_LOCAL:I = 0x68

.field private static final NP_HOMEIDD_CC_AREA_LOCAL:I = 0x65

.field private static final NP_INTERNATIONAL_BEGIN:I = 0x64

.field private static final NP_LOCALIDD_CC_AREA_LOCAL:I = 0x67

.field private static final NP_NANP_AREA_LOCAL:I = 0x2

.field private static final NP_NANP_BEGIN:I = 0x1

.field private static final NP_NANP_LOCAL:I = 0x1

.field private static final NP_NANP_LOCALIDD_CC_AREA_LOCAL:I = 0x5

.field private static final NP_NANP_NBPCD_CC_AREA_LOCAL:I = 0x4

.field private static final NP_NANP_NBPCD_HOMEIDD_CC_AREA_LOCAL:I = 0x6

.field private static final NP_NANP_NDD_AREA_LOCAL:I = 0x3

.field private static final NP_NBPCD_CC_AREA_LOCAL:I = 0x66

.field private static final NP_NBPCD_HOMEIDD_CC_AREA_LOCAL:I = 0x64

.field private static final NP_NONE:I = 0x0

.field private static final PLUS_SIGN:Ljava/lang/String; = "+"

.field private static final TAG:Ljava/lang/String; = "SmsNumberUtils"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string/jumbo v0, "ro.debuggable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_c

    move v1, v2

    :cond_c
    sput-boolean v1, Lcom/android/internal/telephony/SmsNumberUtils;->DBG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/SmsNumberUtils;->ALL_COUNTRY_CODES:[I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/SmsNumberUtils;->IDDS_MAPS:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkInternationalNumberPlan(Landroid/content/Context;Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;Ljava/util/ArrayList;Ljava/lang/String;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    iget-object v0, p1, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->number:Ljava/lang/String;

    const/4 v1, -0x1

    const-string v2, "+"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/SmsNumberUtils;->getCountryCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    move v1, v4

    if-lez v4, :cond_2a

    iput v1, p1, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->countryCode:I

    const/16 v4, 0x64

    return v4

    :cond_2a
    goto :goto_37

    :cond_2b
    invoke-static {p0, v2}, Lcom/android/internal/telephony/SmsNumberUtils;->getCountryCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    move v1, v3

    if-lez v3, :cond_37

    iput v1, p1, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->countryCode:I

    const/16 v3, 0x66

    return v3

    :cond_37
    :goto_37
    nop

    goto :goto_95

    :cond_39
    invoke-virtual {v0, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_54

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/SmsNumberUtils;->getCountryCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    move v1, v3

    if-lez v3, :cond_53

    iput v1, p1, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->countryCode:I

    const/16 v3, 0x65

    return v3

    :cond_53
    goto :goto_95

    :cond_54
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_58
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_81

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_80

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/SmsNumberUtils;->getCountryCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    move v1, v5

    if-lez v5, :cond_80

    iput v1, p1, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->countryCode:I

    iput-object v3, p1, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->IDD:Ljava/lang/String;

    const/16 v2, 0x67

    return v2

    :cond_80
    goto :goto_58

    :cond_81
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_95

    invoke-static {p0, v0}, Lcom/android/internal/telephony/SmsNumberUtils;->getCountryCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    move v1, v2

    if-lez v2, :cond_95

    iput v1, p1, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->countryCode:I

    const/16 v2, 0x68

    return v2

    :cond_95
    :goto_95
    const/4 v2, 0x0

    return v2
.end method

.method private static checkNANP(Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;Ljava/util/ArrayList;)I
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->number:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x1

    if-ne v2, v4, :cond_30

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v6, 0x32

    if-lt v2, v6, :cond_2b

    const/16 v6, 0x39

    if-gt v2, v6, :cond_2b

    const/4 v0, 0x1

    const/4 v6, 0x1

    :goto_1a
    if-ge v6, v4, :cond_2b

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v8

    if-nez v8, :cond_28

    const/4 v0, 0x0

    goto :goto_2b

    :cond_28
    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    :cond_2b
    :goto_2b
    if-eqz v0, :cond_2e

    return v5

    :cond_2e
    goto/16 :goto_bb

    :cond_30
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0xa

    if-ne v2, v4, :cond_40

    invoke-static {v1}, Lcom/android/internal/telephony/SmsNumberUtils;->isNANP(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_bb

    const/4 v2, 0x2

    return v2

    :cond_40
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x3

    const/16 v6, 0xb

    if-ne v2, v6, :cond_50

    invoke-static {v1}, Lcom/android/internal/telephony/SmsNumberUtils;->isNANP(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_bb

    return v4

    :cond_50
    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_86

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v6, :cond_6a

    invoke-static {v1}, Lcom/android/internal/telephony/SmsNumberUtils;->isNANP(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_bb

    const/4 v2, 0x4

    return v2

    :cond_6a
    const-string v2, "011"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_bb

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v5, 0xe

    if-ne v2, v5, :cond_bb

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/SmsNumberUtils;->isNANP(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_bb

    const/4 v2, 0x6

    return v2

    :cond_86
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_bb

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_ba

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_ba

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_ba

    invoke-static {v6}, Lcom/android/internal/telephony/SmsNumberUtils;->isNANP(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_ba

    iput-object v4, p0, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->IDD:Ljava/lang/String;

    const/4 v2, 0x5

    return v2

    :cond_ba
    goto :goto_8a

    :cond_bb
    :goto_bb
    return v3
.end method

.method public static filterDestAddr(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .registers 12

    sget-boolean v0, Lcom/android/internal/telephony/SmsNumberUtils;->DBG:Z

    const-string v1, "\""

    const-string v2, "SmsNumberUtils"

    if-eqz v0, :cond_26

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enter filterDestAddr. destAddr=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2, p2}, Lcom/android/internal/telephony/SmsNumberUtils;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    if-eqz p2, :cond_b8

    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_30

    goto/16 :goto_b8

    :cond_30
    nop

    const-string/jumbo v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {p0, p1}, Lcom/android/internal/telephony/SmsNumberUtils;->needToConvert(Landroid/content/Context;I)Z

    move-result v6

    if-eqz v6, :cond_6c

    invoke-static {v3}, Lcom/android/internal/telephony/SmsNumberUtils;->getNetworkType(Landroid/telephony/TelephonyManager;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_6c

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6c

    const/4 v7, 0x0

    const/4 v8, 0x3

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6c

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_6c

    invoke-static {p0, p2, v7, v6}, Lcom/android/internal/telephony/SmsNumberUtils;->formatNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    :cond_6c
    if-eqz v0, :cond_b2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "destAddr is "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v5, :cond_7e

    const-string v6, "formatted."

    goto :goto_81

    :cond_7e
    const-string/jumbo v6, "not formatted."

    :goto_81
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "leave filterDestAddr, new destAddr=\""

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v5, :cond_9f

    invoke-static {v2, v5}, Lcom/android/internal/telephony/SmsNumberUtils;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_a3

    :cond_9f
    invoke-static {v2, p2}, Lcom/android/internal/telephony/SmsNumberUtils;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_a3
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b2
    if-eqz v5, :cond_b6

    move-object v0, v5

    goto :goto_b7

    :cond_b6
    move-object v0, p2

    :goto_b7
    return-object v0

    :cond_b8
    :goto_b8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "destAddr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2, p2}, Lcom/android/internal/telephony/SmsNumberUtils;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not a global phone number! Nothing changed."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2
.end method

.method private static formatNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    if-eqz p1, :cond_175

    if-eqz v1, :cond_16d

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_16d

    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_165

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_165

    new-instance v4, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;

    invoke-direct {v4, v3}, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsNumberUtils;->getAllIDDs(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/SmsNumberUtils;->checkNANP(Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;Ljava/util/ArrayList;)I

    move-result v6

    sget-boolean v7, Lcom/android/internal/telephony/SmsNumberUtils;->DBG:Z

    const-string v8, "SmsNumberUtils"

    if-eqz v7, :cond_4d

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "NANP type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v6}, Lcom/android/internal/telephony/SmsNumberUtils;->getNumberPlanType(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    const/4 v9, 0x1

    if-eq v6, v9, :cond_164

    const/4 v10, 0x2

    if-eq v6, v10, :cond_164

    const/4 v11, 0x3

    if-ne v6, v11, :cond_58

    goto/16 :goto_164

    :cond_58
    const/4 v11, 0x4

    if-ne v6, v11, :cond_66

    if-eq v2, v9, :cond_61

    if-ne v2, v10, :cond_60

    goto :goto_61

    :cond_60
    return-object v3

    :cond_61
    :goto_61
    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    return-object v7

    :cond_66
    const/4 v11, 0x5

    const-string v12, "+"

    const/4 v13, 0x0

    if-ne v6, v11, :cond_a4

    if-ne v2, v9, :cond_6f

    return-object v3

    :cond_6f
    if-nez v2, :cond_92

    iget-object v7, v4, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->IDD:Ljava/lang/String;

    if-eqz v7, :cond_7b

    iget-object v7, v4, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->IDD:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v13

    :cond_7b
    move v7, v13

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    :cond_92
    if-ne v2, v10, :cond_a4

    iget-object v7, v4, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->IDD:Ljava/lang/String;

    if-eqz v7, :cond_9e

    iget-object v7, v4, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->IDD:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v13

    :cond_9e
    move v7, v13

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    return-object v8

    :cond_a4
    const-string v11, "011"

    invoke-static {v0, v4, v5, v11}, Lcom/android/internal/telephony/SmsNumberUtils;->checkInternationalNumberPlan(Landroid/content/Context;Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result v14

    if-eqz v7, :cond_c6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "International type: "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v14}, Lcom/android/internal/telephony/SmsNumberUtils;->getNumberPlanType(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c6
    const/4 v7, 0x0

    packed-switch v14, :pswitch_data_17e

    invoke-virtual {v3, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_160

    if-eq v2, v9, :cond_13e

    if-ne v2, v10, :cond_160

    goto/16 :goto_13e

    :pswitch_d6  #0x68
    iget v8, v4, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->countryCode:I

    invoke-static {v4}, Lcom/android/internal/telephony/SmsNumberUtils;->inExceptionListForNpCcAreaLocal(Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;)Z

    move-result v10

    if-nez v10, :cond_160

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v12, 0xb

    if-lt v10, v12, :cond_160

    if-eq v8, v9, :cond_160

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_160

    :pswitch_fa  #0x67
    if-eqz v2, :cond_fe

    if-ne v2, v10, :cond_160

    :cond_fe
    iget-object v8, v4, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->IDD:Ljava/lang/String;

    if-eqz v8, :cond_108

    iget-object v8, v4, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->IDD:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    :cond_108
    move v8, v13

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_160

    :pswitch_11f  #0x66
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_160

    :pswitch_135  #0x65
    move-object v7, v3

    goto :goto_160

    :pswitch_137  #0x64
    if-nez v2, :cond_160

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_160

    :cond_13e
    :goto_13e
    const-string v8, "+011"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_14b

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_160

    :cond_14b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_160
    :goto_160
    if-nez v7, :cond_163

    move-object v7, v3

    :cond_163
    return-object v7

    :cond_164
    :goto_164
    return-object v3

    :cond_165
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Number is invalid!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_16d
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "activeMcc is null or empty!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_175
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "number is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_data_17e
    .packed-switch 0x64
        :pswitch_137  #00000064
        :pswitch_135  #00000065
        :pswitch_11f  #00000066
        :pswitch_fa  #00000067
        :pswitch_d6  #00000068
    .end packed-switch
.end method

.method private static getAllCountryCodes(Landroid/content/Context;)[I
    .registers 9

    sget-object v0, Lcom/android/internal/telephony/SmsNumberUtils;->ALL_COUNTRY_CODES:[I

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const/4 v0, 0x0

    :try_start_6
    const-string v1, "Country_Code"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/HbpcdLookup$MccLookup;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v0, v1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_4e

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v1, v1, [I

    sput-object v1, Lcom/android/internal/telephony/SmsNumberUtils;->ALL_COUNTRY_CODES:[I

    const/4 v1, 0x0

    :goto_29
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    sget-object v3, Lcom/android/internal/telephony/SmsNumberUtils;->ALL_COUNTRY_CODES:[I

    add-int/lit8 v5, v1, 0x1

    aput v2, v3, v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sget v3, Lcom/android/internal/telephony/SmsNumberUtils;->MAX_COUNTRY_CODES_LENGTH:I

    if-le v1, v3, :cond_4c

    sput v1, Lcom/android/internal/telephony/SmsNumberUtils;->MAX_COUNTRY_CODES_LENGTH:I
    :try_end_4c
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_4c} :catch_56
    .catchall {:try_start_6 .. :try_end_4c} :catchall_54

    :cond_4c
    move v1, v5

    goto :goto_29

    :cond_4e
    if-eqz v0, :cond_62

    :goto_50
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_62

    :catchall_54
    move-exception v1

    goto :goto_65

    :catch_56
    move-exception v1

    :try_start_57
    const-string v2, "SmsNumberUtils"

    const-string v3, "Can\'t access HbpcdLookup database"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5e
    .catchall {:try_start_57 .. :try_end_5e} :catchall_54

    nop

    if-eqz v0, :cond_62

    goto :goto_50

    :cond_62
    :goto_62
    sget-object v1, Lcom/android/internal/telephony/SmsNumberUtils;->ALL_COUNTRY_CODES:[I

    return-object v1

    :goto_65
    if-eqz v0, :cond_6a

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6a
    throw v1
.end method

.method private static getAllIDDs(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "SmsNumberUtils"

    sget-object v1, Lcom/android/internal/telephony/SmsNumberUtils;->IDDS_MAPS:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_d

    return-object v1

    :cond_d
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    const-string v2, "IDD"

    const-string v3, "MCC"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v10, 0x0

    if-eqz p1, :cond_28

    const-string v2, "MCC=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v10

    move-object v3, v4

    :cond_28
    const/4 v11, 0x0

    :try_start_29
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/HbpcdLookup$MccIdd;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    move-object v7, v2

    move-object v8, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v11, v4

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_51

    :goto_3d
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_51

    invoke-interface {v11, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_50

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_50
    .catch Landroid/database/SQLException; {:try_start_29 .. :try_end_50} :catch_59
    .catchall {:try_start_29 .. :try_end_50} :catchall_57

    :cond_50
    goto :goto_3d

    :cond_51
    if-eqz v11, :cond_63

    :goto_53
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_63

    :catchall_57
    move-exception v0

    goto :goto_8d

    :catch_59
    move-exception v4

    :try_start_5a
    const-string v5, "Can\'t access HbpcdLookup database"

    invoke-static {v0, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5f
    .catchall {:try_start_5a .. :try_end_5f} :catchall_57

    nop

    if-eqz v11, :cond_63

    goto :goto_53

    :cond_63
    :goto_63
    sget-object v4, Lcom/android/internal/telephony/SmsNumberUtils;->IDDS_MAPS:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v4, Lcom/android/internal/telephony/SmsNumberUtils;->DBG:Z

    if-eqz v4, :cond_8c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MCC = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", all IDDs = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8c
    return-object v1

    :goto_8d
    if-eqz v11, :cond_92

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_92
    throw v0
.end method

.method private static getCountryCode(Landroid/content/Context;Ljava/lang/String;)I
    .registers 10

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-lt v1, v2, :cond_5b

    invoke-static {p0}, Lcom/android/internal/telephony/SmsNumberUtils;->getAllCountryCodes(Landroid/content/Context;)[I

    move-result-object v1

    if-nez v1, :cond_10

    return v0

    :cond_10
    sget v2, Lcom/android/internal/telephony/SmsNumberUtils;->MAX_COUNTRY_CODES_LENGTH:I

    new-array v2, v2, [I

    const/4 v3, 0x0

    :goto_15
    sget v4, Lcom/android/internal/telephony/SmsNumberUtils;->MAX_COUNTRY_CODES_LENGTH:I

    if-ge v3, v4, :cond_29

    const/4 v4, 0x0

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_29
    const/4 v3, 0x0

    :goto_2a
    array-length v4, v1

    if-ge v3, v4, :cond_5b

    aget v4, v1, v3

    const/4 v5, 0x0

    :goto_30
    sget v6, Lcom/android/internal/telephony/SmsNumberUtils;->MAX_COUNTRY_CODES_LENGTH:I

    if-ge v5, v6, :cond_58

    aget v6, v2, v5

    if-ne v4, v6, :cond_55

    sget-boolean v6, Lcom/android/internal/telephony/SmsNumberUtils;->DBG:Z

    if-eqz v6, :cond_54

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Country code = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "SmsNumberUtils"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_54
    return v4

    :cond_55
    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    :cond_58
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    :cond_5b
    return v0
.end method

.method private static getNetworkType(Landroid/telephony/TelephonyManager;)I
    .registers 5

    const/4 v0, -0x1

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    const/4 v0, 0x0

    goto :goto_34

    :cond_a
    const/4 v2, 0x2

    if-ne v1, v2, :cond_17

    invoke-static {p0}, Lcom/android/internal/telephony/SmsNumberUtils;->isInternationalRoaming(Landroid/telephony/TelephonyManager;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v0, 0x2

    goto :goto_34

    :cond_15
    const/4 v0, 0x1

    goto :goto_34

    :cond_17
    sget-boolean v2, Lcom/android/internal/telephony/SmsNumberUtils;->DBG:Z

    if-eqz v2, :cond_34

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "warning! unknown mPhoneType value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SmsNumberUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    :goto_34
    return v0
.end method

.method private static getNumberPlanType(I)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Number Plan type ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1f

    const-string v0, "NP_NANP_LOCAL"

    goto :goto_62

    :cond_1f
    const/4 v1, 0x2

    if-ne p0, v1, :cond_25

    const-string v0, "NP_NANP_AREA_LOCAL"

    goto :goto_62

    :cond_25
    const/4 v1, 0x3

    if-ne p0, v1, :cond_2b

    const-string v0, "NP_NANP_NDD_AREA_LOCAL"

    goto :goto_62

    :cond_2b
    const/4 v1, 0x4

    if-ne p0, v1, :cond_31

    const-string v0, "NP_NANP_NBPCD_CC_AREA_LOCAL"

    goto :goto_62

    :cond_31
    const/4 v1, 0x5

    if-ne p0, v1, :cond_37

    const-string v0, "NP_NANP_LOCALIDD_CC_AREA_LOCAL"

    goto :goto_62

    :cond_37
    const/4 v1, 0x6

    if-ne p0, v1, :cond_3d

    const-string v0, "NP_NANP_NBPCD_HOMEIDD_CC_AREA_LOCAL"

    goto :goto_62

    :cond_3d
    const/16 v1, 0x64

    if-ne p0, v1, :cond_44

    const-string v0, "NP_NBPCD_HOMEIDD_CC_AREA_LOCAL"

    goto :goto_62

    :cond_44
    const/16 v1, 0x65

    if-ne p0, v1, :cond_4b

    const-string v0, "NP_HOMEIDD_CC_AREA_LOCAL"

    goto :goto_62

    :cond_4b
    const/16 v1, 0x66

    if-ne p0, v1, :cond_52

    const-string v0, "NP_NBPCD_CC_AREA_LOCAL"

    goto :goto_62

    :cond_52
    const/16 v1, 0x67

    if-ne p0, v1, :cond_59

    const-string v0, "NP_LOCALIDD_CC_AREA_LOCAL"

    goto :goto_62

    :cond_59
    const/16 v1, 0x68

    if-ne p0, v1, :cond_60

    const-string v0, "NP_CC_AREA_LOCAL"

    goto :goto_62

    :cond_60
    const-string v0, "Unknown type"

    :goto_62
    return-object v0
.end method

.method private static inExceptionListForNpCcAreaLocal(Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;)Z
    .registers 4

    iget v0, p0, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->countryCode:I

    iget-object v1, p0, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->number:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1d

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1b

    const/16 v1, 0x14

    if-eq v0, v1, :cond_1b

    const/16 v1, 0x41

    if-eq v0, v1, :cond_1b

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_1d

    :cond_1b
    const/4 v1, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    return v1
.end method

.method private static isInternationalRoaming(Landroid/telephony/TelephonyManager;)Z
    .registers 8

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1d

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    move v2, v3

    goto :goto_1e

    :cond_1d
    const/4 v2, 0x0

    :goto_1e
    if-eqz v2, :cond_3f

    const-string/jumbo v4, "us"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string/jumbo v6, "vi"

    if-eqz v5, :cond_33

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v3, v4

    move v2, v3

    goto :goto_3f

    :cond_33
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v3, v4

    move v2, v3

    :cond_3f
    :goto_3f
    return v2
.end method

.method private static isNANP(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    const/16 v3, 0xa

    if-eq v1, v3, :cond_19

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v2, :cond_4d

    const-string v1, "1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4d

    :cond_19
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v2, :cond_24

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_24
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/SmsNumberUtils;->isTwoToNine(C)Z

    move-result v1

    if-eqz v1, :cond_4d

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/SmsNumberUtils;->isTwoToNine(C)Z

    move-result v1

    if-eqz v1, :cond_4d

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_3c
    if-ge v1, v3, :cond_4d

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v4

    if-nez v4, :cond_4a

    const/4 v0, 0x0

    goto :goto_4d

    :cond_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    :cond_4d
    :goto_4d
    return v0
.end method

.method private static isTwoToNine(C)Z
    .registers 2

    const/16 v0, 0x32

    if-lt p0, v0, :cond_a

    const/16 v0, 0x39

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private static needToConvert(Landroid/content/Context;I)Z
    .registers 7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    const-string v2, "carrier_config"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CarrierConfigManager;

    if-eqz v2, :cond_1f

    invoke-virtual {v2, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v3

    if-eqz v3, :cond_1f

    const-string/jumbo v4, "sms_requires_destination_number_conversion_bool"

    invoke-virtual {v3, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_25

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :cond_1f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const/4 v2, 0x0

    return v2

    :catchall_25
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private static pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_36

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_36

    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_36

    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/SmsNumberUtils;->secureHash([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_36
    :goto_36
    return-object v0
.end method

.method private static secureHash([B)Ljava/lang/String;
    .registers 4

    sget-boolean v0, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_USER:Z

    if-eqz v0, :cond_7

    const-string v0, "****"

    return-object v0

    :cond_7
    :try_start_7
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_d} :catch_19

    nop

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :catch_19
    move-exception v0

    const-string v1, "####"

    return-object v1
.end method
