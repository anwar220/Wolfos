# classes3.dex

.class public Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCallingFeatureId:Ljava/lang/String;

.field private mCallingPackage:Ljava/lang/String;

.field private mCallingPid:I

.field private mCallingUid:I

.field private mLogAsInfo:Z

.field private mMethod:Ljava/lang/String;

.field private mMinSdkVersionForCoarse:I

.field private mMinSdkVersionForEnforcement:I

.field private mMinSdkVersionForFine:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->mMinSdkVersionForCoarse:I

    iput v0, p0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->mMinSdkVersionForFine:I

    iput v0, p0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->mMinSdkVersionForEnforcement:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->mLogAsInfo:Z

    return-void
.end method


# virtual methods
.method public build()Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;
    .registers 13

    iget v0, p0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->mMinSdkVersionForCoarse:I

    if-ltz v0, :cond_41

    iget v1, p0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->mMinSdkVersionForFine:I

    if-ltz v1, :cond_41

    const/4 v2, 0x1

    if-le v1, v2, :cond_1f

    if-le v0, v2, :cond_1f

    iget v2, p0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->mMinSdkVersionForEnforcement:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ne v2, v0, :cond_16

    goto :goto_1f

    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "setMinSdkVersionForEnforcement must be called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    :goto_1f
    iget v8, p0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->mMinSdkVersionForFine:I

    iget v7, p0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->mMinSdkVersionForCoarse:I

    if-lt v8, v7, :cond_39

    new-instance v0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;

    iget-object v3, p0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->mCallingPackage:Ljava/lang/String;

    iget-object v4, p0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->mCallingFeatureId:Ljava/lang/String;

    iget v5, p0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->mCallingUid:I

    iget v6, p0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->mCallingPid:I

    iget-boolean v9, p0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->mLogAsInfo:Z

    iget-object v10, p0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->mMethod:Ljava/lang/String;

    const/4 v11, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIZLjava/lang/String;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery-IA;)V

    return-object v0

    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Since fine location permission includes access to coarse location, the min sdk level for enforcement of the fine location permission must not be less than the min sdk level for enforcement of the coarse location permission."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify min sdk versions for enforcement for both coarse and fine permissions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCallingFeatureId(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;
    .registers 2

    iput-object p1, p0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->mCallingFeatureId:Ljava/lang/String;

    return-object p0
.end method

.method public setCallingPackage(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;
    .registers 2

    iput-object p1, p0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->mCallingPackage:Ljava/lang/String;

    return-object p0
.end method

.method public setCallingPid(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->mCallingPid:I

    return-object p0
.end method

.method public setCallingUid(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->mCallingUid:I

    return-object p0
.end method

.method public setLogAsInfo(Z)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->mLogAsInfo:Z

    return-object p0
.end method

.method public setMethod(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;
    .registers 2

    iput-object p1, p0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->mMethod:Ljava/lang/String;

    return-object p0
.end method

.method public setMinSdkVersionForCoarse(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->mMinSdkVersionForCoarse:I

    return-object p0
.end method

.method public setMinSdkVersionForEnforcement(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->mMinSdkVersionForEnforcement:I

    return-object p0
.end method

.method public setMinSdkVersionForFine(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;
    .registers 2

    iput p1, p0, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->mMinSdkVersionForFine:I

    return-object p0
.end method
