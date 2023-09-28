# classes2.dex

.class public final Landroid/location/provider/ProviderRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/provider/ProviderRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAdasGnssBypass:Z

.field private mIntervalMillis:J

.field private mLocationSettingsIgnored:Z

.field private mLowPower:Z

.field private mMaxUpdateDelayMillis:J

.field private mQuality:I

.field private mWorkSource:Landroid/os/WorkSource;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Landroid/location/provider/ProviderRequest$Builder;->mIntervalMillis:J

    const/16 v0, 0x66

    iput v0, p0, Landroid/location/provider/ProviderRequest$Builder;->mQuality:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/location/provider/ProviderRequest$Builder;->mMaxUpdateDelayMillis:J

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    iput-object v0, p0, Landroid/location/provider/ProviderRequest$Builder;->mWorkSource:Landroid/os/WorkSource;

    return-void
.end method


# virtual methods
.method public build()Landroid/location/provider/ProviderRequest;
    .registers 13

    iget-wide v0, p0, Landroid/location/provider/ProviderRequest$Builder;->mIntervalMillis:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    sget-object v0, Landroid/location/provider/ProviderRequest;->EMPTY_REQUEST:Landroid/location/provider/ProviderRequest;

    return-object v0

    :cond_e
    new-instance v0, Landroid/location/provider/ProviderRequest;

    iget-wide v2, p0, Landroid/location/provider/ProviderRequest$Builder;->mIntervalMillis:J

    iget v4, p0, Landroid/location/provider/ProviderRequest$Builder;->mQuality:I

    iget-wide v5, p0, Landroid/location/provider/ProviderRequest$Builder;->mMaxUpdateDelayMillis:J

    iget-boolean v7, p0, Landroid/location/provider/ProviderRequest$Builder;->mLowPower:Z

    iget-boolean v8, p0, Landroid/location/provider/ProviderRequest$Builder;->mAdasGnssBypass:Z

    iget-boolean v9, p0, Landroid/location/provider/ProviderRequest$Builder;->mLocationSettingsIgnored:Z

    iget-object v10, p0, Landroid/location/provider/ProviderRequest$Builder;->mWorkSource:Landroid/os/WorkSource;

    const/4 v11, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Landroid/location/provider/ProviderRequest;-><init>(JIJZZZLandroid/os/WorkSource;Landroid/location/provider/ProviderRequest-IA;)V

    return-object v0
.end method

.method public setAdasGnssBypass(Z)Landroid/location/provider/ProviderRequest$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/location/provider/ProviderRequest$Builder;->mAdasGnssBypass:Z

    return-object p0
.end method

.method public setIntervalMillis(J)Landroid/location/provider/ProviderRequest$Builder;
    .registers 10

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    const-string v6, "intervalMillis"

    move-wide v0, p1

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(JJJLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/provider/ProviderRequest$Builder;->mIntervalMillis:J

    return-object p0
.end method

.method public setLocationSettingsIgnored(Z)Landroid/location/provider/ProviderRequest$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/location/provider/ProviderRequest$Builder;->mLocationSettingsIgnored:Z

    return-object p0
.end method

.method public setLowPower(Z)Landroid/location/provider/ProviderRequest$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/location/provider/ProviderRequest$Builder;->mLowPower:Z

    return-object p0
.end method

.method public setMaxUpdateDelayMillis(J)Landroid/location/provider/ProviderRequest$Builder;
    .registers 10

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    const-string v6, "maxUpdateDelayMillis"

    move-wide v0, p1

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(JJJLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/provider/ProviderRequest$Builder;->mMaxUpdateDelayMillis:J

    return-object p0
.end method

.method public setQuality(I)Landroid/location/provider/ProviderRequest$Builder;
    .registers 3

    const/16 v0, 0x68

    if-eq p1, v0, :cond_f

    const/16 v0, 0x66

    if-eq p1, v0, :cond_f

    const/16 v0, 0x64

    if-ne p1, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    iput p1, p0, Landroid/location/provider/ProviderRequest$Builder;->mQuality:I

    return-object p0
.end method

.method public setWorkSource(Landroid/os/WorkSource;)Landroid/location/provider/ProviderRequest$Builder;
    .registers 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    iput-object v0, p0, Landroid/location/provider/ProviderRequest$Builder;->mWorkSource:Landroid/os/WorkSource;

    return-object p0
.end method
