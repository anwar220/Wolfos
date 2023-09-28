# classes.dex

.class public final Landroid/app/wallpapereffectsgeneration/CameraAttributes$Builder;
.super Ljava/lang/Object;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/wallpapereffectsgeneration/CameraAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAnchorPointInOutputUvSpace:[F

.field private mAnchorPointInWorldSpace:[F

.field private mCameraOrbitPitchDegrees:F

.field private mCameraOrbitYawDegrees:F

.field private mDollyDistanceInWorldSpace:F

.field private mFrustumFarInWorldSpace:F

.field private mFrustumNearInWorldSpace:F

.field private mVerticalFovDegrees:F


# direct methods
.method public constructor <init>([F[F)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes$Builder;->mAnchorPointInWorldSpace:[F

    iput-object p2, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes$Builder;->mAnchorPointInOutputUvSpace:[F

    return-void
.end method


# virtual methods
.method public build()Landroid/app/wallpapereffectsgeneration/CameraAttributes;
    .registers 12

    new-instance v10, Landroid/app/wallpapereffectsgeneration/CameraAttributes;

    iget-object v1, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes$Builder;->mAnchorPointInWorldSpace:[F

    iget-object v2, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes$Builder;->mAnchorPointInOutputUvSpace:[F

    iget v3, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes$Builder;->mCameraOrbitYawDegrees:F

    iget v4, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes$Builder;->mCameraOrbitPitchDegrees:F

    iget v5, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes$Builder;->mDollyDistanceInWorldSpace:F

    iget v6, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes$Builder;->mVerticalFovDegrees:F

    iget v7, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes$Builder;->mFrustumNearInWorldSpace:F

    iget v8, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes$Builder;->mFrustumFarInWorldSpace:F

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Landroid/app/wallpapereffectsgeneration/CameraAttributes;-><init>([F[FFFFFFFLandroid/app/wallpapereffectsgeneration/CameraAttributes-IA;)V

    return-object v10
.end method

.method public setCameraOrbitPitchDegrees(F)Landroid/app/wallpapereffectsgeneration/CameraAttributes$Builder;
    .registers 2

    iput p1, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes$Builder;->mCameraOrbitPitchDegrees:F

    return-object p0
.end method

.method public setCameraOrbitYawDegrees(F)Landroid/app/wallpapereffectsgeneration/CameraAttributes$Builder;
    .registers 2

    iput p1, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes$Builder;->mCameraOrbitYawDegrees:F

    return-object p0
.end method

.method public setDollyDistanceInWorldSpace(F)Landroid/app/wallpapereffectsgeneration/CameraAttributes$Builder;
    .registers 2

    iput p1, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes$Builder;->mDollyDistanceInWorldSpace:F

    return-object p0
.end method

.method public setFrustumFarInWorldSpace(F)Landroid/app/wallpapereffectsgeneration/CameraAttributes$Builder;
    .registers 2

    iput p1, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes$Builder;->mFrustumFarInWorldSpace:F

    return-object p0
.end method

.method public setFrustumNearInWorldSpace(F)Landroid/app/wallpapereffectsgeneration/CameraAttributes$Builder;
    .registers 2

    iput p1, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes$Builder;->mFrustumNearInWorldSpace:F

    return-object p0
.end method

.method public setVerticalFovDegrees(F)Landroid/app/wallpapereffectsgeneration/CameraAttributes$Builder;
    .registers 2

    iput p1, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes$Builder;->mVerticalFovDegrees:F

    return-object p0
.end method
