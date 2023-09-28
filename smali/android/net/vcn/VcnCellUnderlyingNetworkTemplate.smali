# classes2.dex

.class public final Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;
.super Landroid/net/vcn/VcnUnderlyingNetworkTemplate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;
    }
.end annotation


# static fields
.field private static final ALLOWED_NETWORK_PLMN_IDS_KEY:Ljava/lang/String; = "mAllowedNetworkPlmnIds"

.field private static final ALLOWED_SPECIFIC_CARRIER_IDS_KEY:Ljava/lang/String; = "mAllowedSpecificCarrierIds"

.field private static final DEFAULT_OPPORTUNISTIC_MATCH_CRITERIA:I = 0x0

.field private static final DEFAULT_ROAMING_MATCH_CRITERIA:I = 0x0

.field private static final OPPORTUNISTIC_MATCH_KEY:Ljava/lang/String; = "mOpportunisticMatchCriteria"

.field private static final ROAMING_MATCH_KEY:Ljava/lang/String; = "mRoamingMatchCriteria"


# instance fields
.field private final mAllowedNetworkPlmnIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAllowedSpecificCarrierIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mOpportunisticMatchCriteria:I

.field private final mRoamingMatchCriteria:I


# direct methods
.method static bridge synthetic -$$Nest$smvalidatePlmnIds(Ljava/util/Set;)V
    .registers 1

    invoke-static {p0}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->validatePlmnIds(Ljava/util/Set;)V

    return-void
.end method

.method private constructor <init>(IIIIILjava/util/Set;Ljava/util/Set;II)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIII",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation

    move-object v7, p0

    const/4 v1, 0x2

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;-><init>(IIIIII)V

    new-instance v0, Landroid/util/ArraySet;

    move-object v1, p6

    invoke-direct {v0, p6}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v0, v7, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mAllowedNetworkPlmnIds:Ljava/util/Set;

    new-instance v0, Landroid/util/ArraySet;

    move-object v2, p7

    invoke-direct {v0, p7}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v0, v7, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mAllowedSpecificCarrierIds:Ljava/util/Set;

    move/from16 v0, p8

    iput v0, v7, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mRoamingMatchCriteria:I

    move/from16 v3, p9

    iput v3, v7, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mOpportunisticMatchCriteria:I

    invoke-virtual {p0}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->validate()V

    return-void
.end method

.method synthetic constructor <init>(IIIIILjava/util/Set;Ljava/util/Set;IILandroid/net/vcn/VcnCellUnderlyingNetworkTemplate-IA;)V
    .registers 11

    invoke-direct/range {p0 .. p9}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;-><init>(IIIIILjava/util/Set;Ljava/util/Set;II)V

    return-void
.end method

.method public static fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;
    .registers 22

    move-object/from16 v0, p0

    const-string v1, "PersistableBundle is null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "mMeteredMatchCriteria"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    nop

    const-string v2, "mMinEntryUpstreamBandwidthKbps"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    nop

    const-string v2, "mMinExitUpstreamBandwidthKbps"

    invoke-virtual {v0, v2, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    nop

    const-string v2, "mMinEntryDownstreamBandwidthKbps"

    invoke-virtual {v0, v2, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    nop

    const-string v2, "mMinExitDownstreamBandwidthKbps"

    invoke-virtual {v0, v2, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v15

    nop

    const-string v2, "mAllowedNetworkPlmnIds"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v11

    const-string v2, "plmnIdsBundle is null"

    invoke-static {v11, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v8, Landroid/util/ArraySet;

    sget-object v2, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->STRING_DESERIALIZER:Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Deserializer;

    invoke-static {v11, v2}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->toList(Landroid/os/PersistableBundle;Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Deserializer;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v8, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    nop

    const-string v2, "mAllowedSpecificCarrierIds"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v10

    const-string v2, "specificCarrierIdsBundle is null"

    invoke-static {v10, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v9, Landroid/util/ArraySet;

    sget-object v2, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->INTEGER_DESERIALIZER:Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Deserializer;

    invoke-static {v10, v2}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->toList(Landroid/os/PersistableBundle;Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Deserializer;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v9, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    const-string v2, "mRoamingMatchCriteria"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v16

    const-string v2, "mOpportunisticMatchCriteria"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v17

    new-instance v18, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;

    move-object/from16 v2, v18

    move v3, v1

    move v4, v12

    move v5, v13

    move v6, v14

    move v7, v15

    move-object/from16 v19, v10

    move/from16 v10, v16

    move-object/from16 v20, v11

    move/from16 v11, v17

    invoke-direct/range {v2 .. v11}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;-><init>(IIIIILjava/util/Set;Ljava/util/Set;II)V

    return-object v18
.end method

.method private static validatePlmnIds(Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "matchingOperatorPlmnIds is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_23

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2c

    :cond_23
    const-string v2, "[0-9]+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    goto :goto_9

    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found invalid PLMN ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_45
    return-void
.end method


# virtual methods
.method dumpTransportSpecificFields(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 4

    iget-object v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mAllowedNetworkPlmnIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAllowedNetworkPlmnIds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mAllowedNetworkPlmnIds:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_20
    iget-object v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mAllowedNetworkPlmnIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_40

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAllowedSpecificCarrierIds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mAllowedSpecificCarrierIds:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_40
    iget v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mRoamingMatchCriteria:I

    if-eqz v0, :cond_60

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRoamingMatchCriteria: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mRoamingMatchCriteria:I

    invoke-static {v1}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->getMatchCriteriaString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_60
    iget v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mOpportunisticMatchCriteria:I

    if-eqz v0, :cond_80

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOpportunisticMatchCriteria: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mOpportunisticMatchCriteria:I

    invoke-static {v1}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->getMatchCriteriaString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_80
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    invoke-super {p0, p1}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    instance-of v0, p1, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;

    if-nez v0, :cond_d

    return v1

    :cond_d
    move-object v0, p1

    check-cast v0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;

    iget-object v2, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mAllowedNetworkPlmnIds:Ljava/util/Set;

    iget-object v3, v0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mAllowedNetworkPlmnIds:Ljava/util/Set;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    iget-object v2, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mAllowedSpecificCarrierIds:Ljava/util/Set;

    iget-object v3, v0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mAllowedSpecificCarrierIds:Ljava/util/Set;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    iget v2, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mRoamingMatchCriteria:I

    iget v3, v0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mRoamingMatchCriteria:I

    if-ne v2, v3, :cond_32

    iget v2, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mOpportunisticMatchCriteria:I

    iget v3, v0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mOpportunisticMatchCriteria:I

    if-ne v2, v3, :cond_32

    const/4 v1, 0x1

    goto :goto_33

    :cond_32
    nop

    :goto_33
    return v1
.end method

.method public getOperatorPlmnIds()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mAllowedNetworkPlmnIds:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getOpportunistic()I
    .registers 2

    iget v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mOpportunisticMatchCriteria:I

    return v0
.end method

.method public getRoaming()I
    .registers 2

    iget v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mRoamingMatchCriteria:I

    return v0
.end method

.method public getSimSpecificCarrierIds()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mAllowedSpecificCarrierIds:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-super {p0}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mAllowedNetworkPlmnIds:Ljava/util/Set;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mAllowedSpecificCarrierIds:Ljava/util/Set;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mRoamingMatchCriteria:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mOpportunisticMatchCriteria:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toPersistableBundle()Landroid/os/PersistableBundle;
    .registers 6

    invoke-super {p0}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->toPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mAllowedNetworkPlmnIds:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v2, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->STRING_SERIALIZER:Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Serializer;

    invoke-static {v1, v2}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->fromList(Ljava/util/List;Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Serializer;)Landroid/os/PersistableBundle;

    move-result-object v1

    const-string v2, "mAllowedNetworkPlmnIds"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mAllowedSpecificCarrierIds:Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v3, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->INTEGER_SERIALIZER:Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Serializer;

    invoke-static {v2, v3}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->fromList(Ljava/util/List;Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$Serializer;)Landroid/os/PersistableBundle;

    move-result-object v2

    const-string v3, "mAllowedSpecificCarrierIds"

    invoke-virtual {v0, v3, v2}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    iget v3, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mRoamingMatchCriteria:I

    const-string v4, "mRoamingMatchCriteria"

    invoke-virtual {v0, v4, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    iget v3, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mOpportunisticMatchCriteria:I

    const-string v4, "mOpportunisticMatchCriteria"

    invoke-virtual {v0, v4, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method protected validate()V
    .registers 3

    invoke-super {p0}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->validate()V

    iget-object v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mAllowedNetworkPlmnIds:Ljava/util/Set;

    invoke-static {v0}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->validatePlmnIds(Ljava/util/Set;)V

    iget-object v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mAllowedSpecificCarrierIds:Ljava/util/Set;

    const-string v1, "matchingCarrierIds is null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mRoamingMatchCriteria:I

    const-string v1, "mRoamingMatchCriteria"

    invoke-static {v0, v1}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->validateMatchCriteria(ILjava/lang/String;)V

    iget v0, p0, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->mOpportunisticMatchCriteria:I

    const-string v1, "mOpportunisticMatchCriteria"

    invoke-static {v0, v1}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->validateMatchCriteria(ILjava/lang/String;)V

    return-void
.end method
