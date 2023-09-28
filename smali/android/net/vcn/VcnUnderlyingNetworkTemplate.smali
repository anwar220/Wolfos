# classes2.dex

.class public abstract Landroid/net/vcn/VcnUnderlyingNetworkTemplate;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/vcn/VcnUnderlyingNetworkTemplate$MatchCriteria;
    }
.end annotation


# static fields
.field static final DEFAULT_METERED_MATCH_CRITERIA:I = 0x0

.field public static final DEFAULT_MIN_BANDWIDTH_KBPS:I = 0x0

.field public static final MATCH_ANY:I = 0x0

.field private static final MATCH_CRITERIA_TO_STRING_MAP:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MATCH_FORBIDDEN:I = 0x2

.field public static final MATCH_REQUIRED:I = 0x1

.field static final METERED_MATCH_KEY:Ljava/lang/String; = "mMeteredMatchCriteria"

.field static final MIN_ENTRY_DOWNSTREAM_BANDWIDTH_KBPS_KEY:Ljava/lang/String; = "mMinEntryDownstreamBandwidthKbps"

.field static final MIN_ENTRY_UPSTREAM_BANDWIDTH_KBPS_KEY:Ljava/lang/String; = "mMinEntryUpstreamBandwidthKbps"

.field static final MIN_EXIT_DOWNSTREAM_BANDWIDTH_KBPS_KEY:Ljava/lang/String; = "mMinExitDownstreamBandwidthKbps"

.field static final MIN_EXIT_UPSTREAM_BANDWIDTH_KBPS_KEY:Ljava/lang/String; = "mMinExitUpstreamBandwidthKbps"

.field static final NETWORK_PRIORITY_TYPE_CELL:I = 0x2

.field private static final NETWORK_PRIORITY_TYPE_KEY:Ljava/lang/String; = "mNetworkPriorityType"

.field static final NETWORK_PRIORITY_TYPE_WIFI:I = 0x1


# instance fields
.field private final mMeteredMatchCriteria:I

.field private final mMinEntryDownstreamBandwidthKbps:I

.field private final mMinEntryUpstreamBandwidthKbps:I

.field private final mMinExitDownstreamBandwidthKbps:I

.field private final mMinExitUpstreamBandwidthKbps:I

.field private final mNetworkPriorityType:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->MATCH_CRITERIA_TO_STRING_MAP:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const-string v2, "MATCH_ANY"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    const-string v2, "MATCH_REQUIRED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x2

    const-string v2, "MATCH_FORBIDDEN"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method constructor <init>(IIIIII)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mNetworkPriorityType:I

    iput p2, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMeteredMatchCriteria:I

    iput p3, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinEntryUpstreamBandwidthKbps:I

    iput p4, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinExitUpstreamBandwidthKbps:I

    iput p5, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinEntryDownstreamBandwidthKbps:I

    iput p6, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinExitDownstreamBandwidthKbps:I

    return-void
.end method

.method public static fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/vcn/VcnUnderlyingNetworkTemplate;
    .registers 5

    const-string v0, "PersistableBundle is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "mNetworkPriorityType"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_32

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid networkPriorityType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_27  #0x2
    invoke-static {p0}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;->fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;

    move-result-object v1

    return-object v1

    :pswitch_2c  #0x1
    invoke-static {p0}, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;->fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_2c  #00000001
        :pswitch_27  #00000002
    .end packed-switch
.end method

.method static getMatchCriteriaString(I)Ljava/lang/String;
    .registers 2

    sget-object v0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->MATCH_CRITERIA_TO_STRING_MAP:Landroid/util/SparseArray;

    invoke-static {v0, p0}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->getNameString(Landroid/util/SparseArray;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getNameString(Landroid/util/SparseArray;I)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method static validateMatchCriteria(ILjava/lang/String;)V
    .registers 5

    sget-object v0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->MATCH_CRITERIA_TO_STRING_MAP:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid matching criteria: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    return-void
.end method

.method static validateMinBandwidthKbps(II)V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p0, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    :goto_7
    const-string v3, "Invalid minEntryBandwidth, must be >= 0"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-ltz p1, :cond_10

    move v2, v0

    goto :goto_11

    :cond_10
    move v2, v1

    :goto_11
    const-string v3, "Invalid minExitBandwidth, must be >= 0"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-lt p0, p1, :cond_19

    goto :goto_1a

    :cond_19
    move v0, v1

    :goto_1a
    const-string v1, "Minimum entry bandwidth must be >= exit bandwidth"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget v0, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMeteredMatchCriteria:I

    if-eqz v0, :cond_41

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMeteredMatchCriteria: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMeteredMatchCriteria:I

    invoke-static {v1}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->getMatchCriteriaString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_41
    iget v0, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinEntryUpstreamBandwidthKbps:I

    if-eqz v0, :cond_5d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMinEntryUpstreamBandwidthKbps: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinEntryUpstreamBandwidthKbps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_5d
    iget v0, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinExitUpstreamBandwidthKbps:I

    if-eqz v0, :cond_79

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMinExitUpstreamBandwidthKbps: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinExitUpstreamBandwidthKbps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_79
    iget v0, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinEntryDownstreamBandwidthKbps:I

    if-eqz v0, :cond_95

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMinEntryDownstreamBandwidthKbps: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinEntryDownstreamBandwidthKbps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_95
    iget v0, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinExitDownstreamBandwidthKbps:I

    if-eqz v0, :cond_b1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMinExitDownstreamBandwidthKbps: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinExitDownstreamBandwidthKbps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_b1
    invoke-virtual {p0, p1}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->dumpTransportSpecificFields(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method abstract dumpTransportSpecificFields(Lcom/android/internal/util/IndentingPrintWriter;)V
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p1, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;

    iget v2, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mNetworkPriorityType:I

    iget v3, v0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mNetworkPriorityType:I

    if-ne v2, v3, :cond_2e

    iget v2, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMeteredMatchCriteria:I

    iget v3, v0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMeteredMatchCriteria:I

    if-ne v2, v3, :cond_2e

    iget v2, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinEntryUpstreamBandwidthKbps:I

    iget v3, v0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinEntryUpstreamBandwidthKbps:I

    if-ne v2, v3, :cond_2e

    iget v2, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinExitUpstreamBandwidthKbps:I

    iget v3, v0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinExitUpstreamBandwidthKbps:I

    if-ne v2, v3, :cond_2e

    iget v2, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinEntryDownstreamBandwidthKbps:I

    iget v3, v0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinEntryDownstreamBandwidthKbps:I

    if-ne v2, v3, :cond_2e

    iget v2, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinExitDownstreamBandwidthKbps:I

    iget v3, v0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinExitDownstreamBandwidthKbps:I

    if-ne v2, v3, :cond_2e

    const/4 v1, 0x1

    :cond_2e
    return v1
.end method

.method public getMetered()I
    .registers 2

    iget v0, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMeteredMatchCriteria:I

    return v0
.end method

.method public getMinEntryDownstreamBandwidthKbps()I
    .registers 2

    iget v0, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinEntryDownstreamBandwidthKbps:I

    return v0
.end method

.method public getMinEntryUpstreamBandwidthKbps()I
    .registers 2

    iget v0, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinEntryUpstreamBandwidthKbps:I

    return v0
.end method

.method public getMinExitDownstreamBandwidthKbps()I
    .registers 2

    iget v0, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinExitDownstreamBandwidthKbps:I

    return v0
.end method

.method public getMinExitUpstreamBandwidthKbps()I
    .registers 2

    iget v0, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinExitUpstreamBandwidthKbps:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mNetworkPriorityType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMeteredMatchCriteria:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinEntryUpstreamBandwidthKbps:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinExitUpstreamBandwidthKbps:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinEntryDownstreamBandwidthKbps:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinExitDownstreamBandwidthKbps:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method toPersistableBundle()Landroid/os/PersistableBundle;
    .registers 4

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    iget v1, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mNetworkPriorityType:I

    const-string v2, "mNetworkPriorityType"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMeteredMatchCriteria:I

    const-string v2, "mMeteredMatchCriteria"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinEntryUpstreamBandwidthKbps:I

    const-string v2, "mMinEntryUpstreamBandwidthKbps"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinExitUpstreamBandwidthKbps:I

    const-string v2, "mMinExitUpstreamBandwidthKbps"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinEntryDownstreamBandwidthKbps:I

    const-string v2, "mMinEntryDownstreamBandwidthKbps"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinExitDownstreamBandwidthKbps:I

    const-string v2, "mMinExitDownstreamBandwidthKbps"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method protected validate()V
    .registers 3

    iget v0, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMeteredMatchCriteria:I

    const-string v1, "mMeteredMatchCriteria"

    invoke-static {v0, v1}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->validateMatchCriteria(ILjava/lang/String;)V

    iget v0, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinEntryUpstreamBandwidthKbps:I

    iget v1, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinExitUpstreamBandwidthKbps:I

    invoke-static {v0, v1}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->validateMinBandwidthKbps(II)V

    iget v0, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinEntryDownstreamBandwidthKbps:I

    iget v1, p0, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->mMinExitDownstreamBandwidthKbps:I

    invoke-static {v0, v1}, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;->validateMinBandwidthKbps(II)V

    return-void
.end method
