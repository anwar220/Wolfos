# classes.dex

.class public final Landroid/app/wallpapereffectsgeneration/CameraAttributes;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/wallpapereffectsgeneration/CameraAttributes$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/wallpapereffectsgeneration/CameraAttributes;",
            ">;"
        }
    .end annotation
.end field


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
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/wallpapereffectsgeneration/CameraAttributes$1;

    invoke-direct {v0}, Landroid/app/wallpapereffectsgeneration/CameraAttributes$1;-><init>()V

    sput-object v0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mCameraOrbitYawDegrees:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mCameraOrbitPitchDegrees:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mDollyDistanceInWorldSpace:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mVerticalFovDegrees:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mFrustumNearInWorldSpace:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mFrustumFarInWorldSpace:F

    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mAnchorPointInWorldSpace:[F

    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mAnchorPointInOutputUvSpace:[F

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/wallpapereffectsgeneration/CameraAttributes-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/wallpapereffectsgeneration/CameraAttributes;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>([F[FFFFFFF)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mAnchorPointInWorldSpace:[F

    iput-object p2, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mAnchorPointInOutputUvSpace:[F

    iput p3, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mCameraOrbitYawDegrees:F

    iput p4, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mCameraOrbitPitchDegrees:F

    iput p5, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mDollyDistanceInWorldSpace:F

    iput p6, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mVerticalFovDegrees:F

    iput p7, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mFrustumNearInWorldSpace:F

    iput p8, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mFrustumFarInWorldSpace:F

    return-void
.end method

.method synthetic constructor <init>([F[FFFFFFFLandroid/app/wallpapereffectsgeneration/CameraAttributes-IA;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Landroid/app/wallpapereffectsgeneration/CameraAttributes;-><init>([F[FFFFFFF)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAnchorPointInOutputUvSpace()[F
    .registers 2

    iget-object v0, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mAnchorPointInOutputUvSpace:[F

    return-object v0
.end method

.method public getAnchorPointInWorldSpace()[F
    .registers 2

    iget-object v0, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mAnchorPointInWorldSpace:[F

    return-object v0
.end method

.method public getCameraOrbitPitchDegrees()F
    .registers 2

    iget v0, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mCameraOrbitPitchDegrees:F

    return v0
.end method

.method public getCameraOrbitYawDegrees()F
    .registers 2

    iget v0, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mCameraOrbitYawDegrees:F

    return v0
.end method

.method public getDollyDistanceInWorldSpace()F
    .registers 2

    iget v0, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mDollyDistanceInWorldSpace:F

    return v0
.end method

.method public getFrustumFarInWorldSpace()F
    .registers 2

    iget v0, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mFrustumFarInWorldSpace:F

    return v0
.end method

.method public getFrustumNearInWorldSpace()F
    .registers 2

    iget v0, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mFrustumNearInWorldSpace:F

    return v0
.end method

.method public getVerticalFovDegrees()F
    .registers 2

    iget v0, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mVerticalFovDegrees:F

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mCameraOrbitYawDegrees:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mCameraOrbitPitchDegrees:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mDollyDistanceInWorldSpace:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mVerticalFovDegrees:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mFrustumNearInWorldSpace:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mFrustumFarInWorldSpace:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v0, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mAnchorPointInWorldSpace:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    iget-object v0, p0, Landroid/app/wallpapereffectsgeneration/CameraAttributes;->mAnchorPointInOutputUvSpace:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    return-void
.end method
