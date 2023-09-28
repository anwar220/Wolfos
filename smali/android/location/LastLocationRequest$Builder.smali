# classes2.dex

.class public final Landroid/location/LastLocationRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LastLocationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAdasGnssBypass:Z

.field private mHiddenFromAppOps:Z

.field private mLocationSettingsIgnored:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/location/LastLocationRequest$Builder;->mHiddenFromAppOps:Z

    iput-boolean v0, p0, Landroid/location/LastLocationRequest$Builder;->mAdasGnssBypass:Z

    iput-boolean v0, p0, Landroid/location/LastLocationRequest$Builder;->mLocationSettingsIgnored:Z

    return-void
.end method

.method public constructor <init>(Landroid/location/LastLocationRequest;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/location/LastLocationRequest;->-$$Nest$fgetmHiddenFromAppOps(Landroid/location/LastLocationRequest;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/location/LastLocationRequest$Builder;->mHiddenFromAppOps:Z

    invoke-static {p1}, Landroid/location/LastLocationRequest;->-$$Nest$fgetmAdasGnssBypass(Landroid/location/LastLocationRequest;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/location/LastLocationRequest$Builder;->mAdasGnssBypass:Z

    invoke-static {p1}, Landroid/location/LastLocationRequest;->-$$Nest$fgetmLocationSettingsIgnored(Landroid/location/LastLocationRequest;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/location/LastLocationRequest$Builder;->mLocationSettingsIgnored:Z

    return-void
.end method


# virtual methods
.method public build()Landroid/location/LastLocationRequest;
    .registers 6

    new-instance v0, Landroid/location/LastLocationRequest;

    iget-boolean v1, p0, Landroid/location/LastLocationRequest$Builder;->mHiddenFromAppOps:Z

    iget-boolean v2, p0, Landroid/location/LastLocationRequest$Builder;->mAdasGnssBypass:Z

    iget-boolean v3, p0, Landroid/location/LastLocationRequest$Builder;->mLocationSettingsIgnored:Z

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/location/LastLocationRequest;-><init>(ZZZLandroid/location/LastLocationRequest-IA;)V

    return-object v0
.end method

.method public setAdasGnssBypass(Z)Landroid/location/LastLocationRequest$Builder;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iput-boolean p1, p0, Landroid/location/LastLocationRequest$Builder;->mAdasGnssBypass:Z

    return-object p0
.end method

.method public setHiddenFromAppOps(Z)Landroid/location/LastLocationRequest$Builder;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iput-boolean p1, p0, Landroid/location/LastLocationRequest$Builder;->mHiddenFromAppOps:Z

    return-object p0
.end method

.method public setLocationSettingsIgnored(Z)Landroid/location/LastLocationRequest$Builder;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iput-boolean p1, p0, Landroid/location/LastLocationRequest$Builder;->mLocationSettingsIgnored:Z

    return-object p0
.end method
