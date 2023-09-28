# classes.dex

.class public final Landroid/companion/AssociationInfo$Builder;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/companion/AssociationInfo$NonActionableBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/AssociationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mLastTimeConnectedMs:J

.field private mNotifyOnDeviceNearby:Z

.field private final mOriginalInfo:Landroid/companion/AssociationInfo;


# direct methods
.method private constructor <init>(Landroid/companion/AssociationInfo;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/companion/AssociationInfo$Builder;->mOriginalInfo:Landroid/companion/AssociationInfo;

    invoke-static {p1}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmNotifyOnDeviceNearby(Landroid/companion/AssociationInfo;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/companion/AssociationInfo$Builder;->mNotifyOnDeviceNearby:Z

    invoke-static {p1}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmLastTimeConnectedMs(Landroid/companion/AssociationInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/companion/AssociationInfo$Builder;->mLastTimeConnectedMs:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/companion/AssociationInfo;Landroid/companion/AssociationInfo$Builder-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/companion/AssociationInfo$Builder;-><init>(Landroid/companion/AssociationInfo;)V

    return-void
.end method


# virtual methods
.method public build()Landroid/companion/AssociationInfo;
    .registers 15

    new-instance v13, Landroid/companion/AssociationInfo;

    iget-object v0, p0, Landroid/companion/AssociationInfo$Builder;->mOriginalInfo:Landroid/companion/AssociationInfo;

    invoke-static {v0}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmId(Landroid/companion/AssociationInfo;)I

    move-result v1

    iget-object v0, p0, Landroid/companion/AssociationInfo$Builder;->mOriginalInfo:Landroid/companion/AssociationInfo;

    invoke-static {v0}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmUserId(Landroid/companion/AssociationInfo;)I

    move-result v2

    iget-object v0, p0, Landroid/companion/AssociationInfo$Builder;->mOriginalInfo:Landroid/companion/AssociationInfo;

    invoke-static {v0}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmPackageName(Landroid/companion/AssociationInfo;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Landroid/companion/AssociationInfo$Builder;->mOriginalInfo:Landroid/companion/AssociationInfo;

    invoke-static {v0}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmDeviceMacAddress(Landroid/companion/AssociationInfo;)Landroid/net/MacAddress;

    move-result-object v4

    iget-object v0, p0, Landroid/companion/AssociationInfo$Builder;->mOriginalInfo:Landroid/companion/AssociationInfo;

    invoke-static {v0}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmDisplayName(Landroid/companion/AssociationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v0, p0, Landroid/companion/AssociationInfo$Builder;->mOriginalInfo:Landroid/companion/AssociationInfo;

    invoke-static {v0}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmDeviceProfile(Landroid/companion/AssociationInfo;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Landroid/companion/AssociationInfo$Builder;->mOriginalInfo:Landroid/companion/AssociationInfo;

    invoke-static {v0}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmSelfManaged(Landroid/companion/AssociationInfo;)Z

    move-result v7

    iget-boolean v8, p0, Landroid/companion/AssociationInfo$Builder;->mNotifyOnDeviceNearby:Z

    iget-object v0, p0, Landroid/companion/AssociationInfo$Builder;->mOriginalInfo:Landroid/companion/AssociationInfo;

    invoke-static {v0}, Landroid/companion/AssociationInfo;->-$$Nest$fgetmTimeApprovedMs(Landroid/companion/AssociationInfo;)J

    move-result-wide v9

    iget-wide v11, p0, Landroid/companion/AssociationInfo$Builder;->mLastTimeConnectedMs:J

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Landroid/companion/AssociationInfo;-><init>(IILjava/lang/String;Landroid/net/MacAddress;Ljava/lang/CharSequence;Ljava/lang/String;ZZJJ)V

    return-object v13
.end method

.method public setLastTimeConnected(J)Landroid/companion/AssociationInfo$Builder;
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_9

    iput-wide p1, p0, Landroid/companion/AssociationInfo$Builder;->mLastTimeConnectedMs:J

    return-object p0

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lastTimeConnectedMs must not be negative! (Given "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNotifyOnDeviceNearby(Z)Landroid/companion/AssociationInfo$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/companion/AssociationInfo$Builder;->mNotifyOnDeviceNearby:Z

    return-object p0
.end method
