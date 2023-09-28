# classes4.dex

.class public Lcom/android/internal/telephony/SipMessageParsingUtils;
.super Ljava/lang/Object;


# static fields
.field private static final ACCEPT_CONTACT_HEADER_KEY:Ljava/lang/String; = "accept-contact"

.field private static final ACCEPT_CONTACT_HEADER_KEY_COMPACT:Ljava/lang/String; = "a"

.field private static final BRANCH_PARAM_KEY:Ljava/lang/String; = "branch"

.field private static final CALL_ID_SIP_HEADER_KEY:Ljava/lang/String; = "call-id"

.field private static final CALL_ID_SIP_HEADER_KEY_COMPACT:Ljava/lang/String; = "i"

.field private static final FROM_HEADER_KEY:Ljava/lang/String; = "from"

.field private static final FROM_HEADER_KEY_COMPACT:Ljava/lang/String; = "f"

.field private static final HEADER_KEY_VALUE_SEPARATOR:Ljava/lang/String; = ":"

.field private static final PARAM_KEY_VALUE_SEPARATOR:Ljava/lang/String; = "="

.field private static final PARAM_SEPARATOR:Ljava/lang/String; = ";"

.field private static final SIP_REQUEST_METHODS:[Ljava/lang/String;

.field private static final SIP_VERSION_2:Ljava/lang/String; = "SIP/2.0"

.field private static final SUBHEADER_VALUE_SEPARATOR:Ljava/lang/String; = ","

.field private static final TAG:Ljava/lang/String; = "SipMessageParsingUtils"

.field private static final TAG_PARAM_KEY:Ljava/lang/String; = "tag"

.field private static final TO_HEADER_KEY:Ljava/lang/String; = "to"

.field private static final TO_HEADER_KEY_COMPACT:Ljava/lang/String; = "t"

.field private static final VIA_SIP_HEADER_KEY:Ljava/lang/String; = "via"

.field private static final VIA_SIP_HEADER_KEY_COMPACT:Ljava/lang/String; = "v"


# direct methods
.method static constructor <clinit>()V
    .registers 14

    const-string v0, "INVITE"

    const-string v1, "ACK"

    const-string v2, "OPTIONS"

    const-string v3, "BYE"

    const-string v4, "CANCEL"

    const-string v5, "REGISTER"

    const-string v6, "PRACK"

    const-string v7, "SUBSCRIBE"

    const-string v8, "NOTIFY"

    const-string v9, "PUBLISH"

    const-string v10, "INFO"

    const-string v11, "REFER"

    const-string v12, "MESSAGE"

    const-string v13, "UPDATE"

    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SipMessageParsingUtils;->SIP_REQUEST_METHODS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAcceptContactFeatureTags(Ljava/lang/String;)Ljava/util/Set;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "accept-contact"

    const-string v1, "a"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object/from16 v2, p0

    invoke-static {v2, v1, v0}, Lcom/android/internal/telephony/SipMessageParsingUtils;->parseHeaders(Ljava/lang/String;Z[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1

    :cond_1a
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_23
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x2

    if-ge v7, v8, :cond_3e

    goto :goto_23

    :cond_3e
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    array-length v9, v6

    const/4 v10, 0x1

    invoke-interface {v7, v10, v9}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v9, Lcom/android/internal/telephony/SipMessageParsingUtils$$ExternalSyntheticLambda1;

    invoke-direct {v9}, Lcom/android/internal/telephony/SipMessageParsingUtils$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v7, v9}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v9, Lcom/android/internal/telephony/SipMessageParsingUtils$$ExternalSyntheticLambda2;

    invoke-direct {v9}, Lcom/android/internal/telephony/SipMessageParsingUtils$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v7, v9}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v7

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_6c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_bc

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v12, "="

    invoke-virtual {v11, v12, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v13

    array-length v14, v13

    if-ge v14, v8, :cond_85

    invoke-interface {v3, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6c

    :cond_85
    aget-object v14, v13, v10

    invoke-static {v14}, Lcom/android/internal/telephony/SipMessageParsingUtils;->splitParamValue(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    array-length v15, v14

    move v8, v1

    :goto_8d
    if-ge v8, v15, :cond_b5

    aget-object v10, v14, v8

    move-object/from16 v16, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v13, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    const/4 v10, 0x1

    move-object/from16 v2, p0

    move-object/from16 v0, v16

    goto :goto_8d

    :cond_b5
    move-object/from16 v16, v0

    const/4 v8, 0x2

    const/4 v10, 0x1

    move-object/from16 v2, p0

    goto :goto_6c

    :cond_bc
    move-object/from16 v16, v0

    move-object/from16 v2, p0

    goto/16 :goto_23

    :cond_c2
    return-object v3
.end method

.method public static getCallId(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "call-id"

    const-string v1, "i"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Lcom/android/internal/telephony/SipMessageParsingUtils;->parseHeaders(Ljava/lang/String;Z[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1f

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    :goto_20
    return-object v1
.end method

.method public static getFromTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "from"

    const-string v1, "f"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Lcom/android/internal/telephony/SipMessageParsingUtils;->parseHeaders(Ljava/lang/String;Z[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v1, 0x0

    return-object v1

    :cond_15
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "tag"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/SipMessageParsingUtils;->getParameterValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getParameterValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ge v1, v3, :cond_c

    return-object v2

    :cond_c
    array-length v1, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_f
    if-ge v5, v1, :cond_5b

    aget-object v6, v0, v5

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    if-ge v8, v3, :cond_1d

    goto :goto_58

    :cond_1d
    array-length v8, v7

    if-le v8, v3, :cond_3c

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getParameterValue: unexpected parameter"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "SipMessageParsingUtils"

    invoke-static {v9, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    aget-object v8, v7, v4

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    const/4 v8, 0x1

    aget-object v9, v7, v8

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    aget-object v9, v7, v4

    invoke-virtual {p1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_58

    aget-object v1, v7, v8

    return-object v1

    :cond_58
    :goto_58
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_5b
    return-object v2
.end method

.method public static getToTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string/jumbo v0, "to"

    const-string/jumbo v1, "t"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Lcom/android/internal/telephony/SipMessageParsingUtils;->parseHeaders(Ljava/lang/String;Z[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x0

    return-object v1

    :cond_17
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "tag"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/SipMessageParsingUtils;->getParameterValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getTransactionId(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const-string/jumbo v0, "via"

    const-string/jumbo v1, "v"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Lcom/android/internal/telephony/SipMessageParsingUtils;->parseHeaders(Ljava/lang/String;Z[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_2b
    if-ge v5, v4, :cond_3b

    aget-object v6, v3, v5

    const-string v7, "branch"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/SipMessageParsingUtils;->getParameterValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_3a

    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    :cond_3a
    return-object v7

    :cond_3b
    goto :goto_13

    :cond_3c
    const/4 v1, 0x0

    return-object v1
.end method

.method public static isSipRequest(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Lcom/android/internal/telephony/SipMessageParsingUtils;->splitStartLineAndVerify(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    return v1

    :cond_8
    invoke-static {v0}, Lcom/android/internal/telephony/SipMessageParsingUtils;->verifySipRequest([Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isSipResponse(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Lcom/android/internal/telephony/SipMessageParsingUtils;->splitStartLineAndVerify(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    return v1

    :cond_8
    invoke-static {v0}, Lcom/android/internal/telephony/SipMessageParsingUtils;->verifySipResponse([Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private static isStartLineMalformed([Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x1

    if-eqz p0, :cond_e

    array-length v1, p0

    if-nez v1, :cond_7

    goto :goto_e

    :cond_7
    array-length v1, p0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_c

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    :goto_e
    return v0
.end method

.method static synthetic lambda$getAcceptContactFeatureTags$0(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$parseHeaders$2(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$parseHeaders$3(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$verifySipRequest$1([Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static varargs parseHeaders(Ljava/lang/String;Z[Ljava/lang/String;)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/android/internal/telephony/SipMessageParsingUtils;->removeLeadingWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "\\r?\\n"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-nez v2, :cond_17

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    :cond_17
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    array-length v4, v1

    const/4 v5, 0x0

    move v6, v5

    :goto_20
    if-ge v6, v4, :cond_a8

    aget-object v7, v1, v6

    const-string v8, "\t"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9c

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_35

    goto :goto_9c

    :cond_35
    if-eqz v2, :cond_62

    move-object v8, v2

    if-eqz p2, :cond_4c

    array-length v9, p2

    if-eqz v9, :cond_4c

    invoke-static {p2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v9

    new-instance v10, Lcom/android/internal/telephony/SipMessageParsingUtils$$ExternalSyntheticLambda3;

    invoke-direct {v10, v8}, Lcom/android/internal/telephony/SipMessageParsingUtils$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    invoke-interface {v9, v10}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v9

    if-eqz v9, :cond_5b

    :cond_4c
    new-instance v9, Landroid/util/Pair;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v8, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_5b

    return-object v0

    :cond_5b
    const/4 v2, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v9

    :cond_62
    const-string v8, ":"

    const/4 v9, 0x2

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    array-length v10, v8

    if-ge v10, v9, :cond_86

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "parseHeaders - received malformed line: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "SipMessageParsingUtils"

    invoke-static {v10, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a4

    :cond_86
    aget-object v9, v8, v5

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x1

    :goto_8d
    array-length v10, v8

    if-ge v9, v10, :cond_a4

    aget-object v10, v8, v9

    invoke-static {v10}, Lcom/android/internal/telephony/SipMessageParsingUtils;->removeLeadingWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_8d

    :cond_9c
    :goto_9c
    invoke-static {v7}, Lcom/android/internal/telephony/SipMessageParsingUtils;->removeLeadingWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    :cond_a4
    :goto_a4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_20

    :cond_a8
    if-eqz v2, :cond_cb

    move-object v4, v2

    if-eqz p2, :cond_bf

    array-length v5, p2

    if-eqz v5, :cond_bf

    invoke-static {p2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/internal/telephony/SipMessageParsingUtils$$ExternalSyntheticLambda4;

    invoke-direct {v6, v4}, Lcom/android/internal/telephony/SipMessageParsingUtils$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v5

    if-eqz v5, :cond_cb

    :cond_bf
    new-instance v5, Landroid/util/Pair;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_cb
    return-object v0
.end method

.method private static removeLeadingWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "^\\s*"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static splitParamValue(Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_15

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    new-array v0, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    return-object v0

    :cond_15
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_25
    array-length v3, v1

    if-ge v2, v3, :cond_44

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :cond_44
    return-object v1
.end method

.method public static splitStartLineAndVerify(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3

    const-string v0, " "

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/SipMessageParsingUtils;->isStartLineMalformed([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x0

    return-object v1

    :cond_f
    return-object v0
.end method

.method private static verifySipRequest([Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x2

    aget-object v0, p0, v0

    const-string v1, "SIP/2.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    return v1

    :cond_d
    const/4 v0, 0x1

    :try_start_e
    aget-object v2, p0, v0

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2
    :try_end_18
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_18} :catch_2e

    if-eqz v2, :cond_1b

    move v1, v0

    :cond_1b
    move v0, v1

    nop

    sget-object v1, Lcom/android/internal/telephony/SipMessageParsingUtils;->SIP_REQUEST_METHODS:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/SipMessageParsingUtils$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/SipMessageParsingUtils$$ExternalSyntheticLambda0;-><init>([Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    and-int/2addr v0, v1

    return v0

    :catch_2e
    move-exception v0

    return v1
.end method

.method private static verifySipResponse([Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    aget-object v1, p0, v0

    const-string v2, "SIP/2.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    return v0

    :cond_c
    const/4 v1, 0x1

    :try_start_d
    aget-object v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_13} :catch_1e

    nop

    const/16 v3, 0x64

    if-lt v2, v3, :cond_1d

    const/16 v3, 0x2bc

    if-ge v2, v3, :cond_1d

    move v0, v1

    :cond_1d
    return v0

    :catch_1e
    move-exception v1

    return v0
.end method
