# classes.dex

.class public interface abstract Landroid/hardware/face/IMiuiFaceManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/face/IMiuiFaceManager$MiuiFaceContants;
    }
.end annotation


# virtual methods
.method public abstract addLockoutResetCallback(Landroid/hardware/face/FaceManager$LockoutResetCallback;)V
.end method

.method public abstract authenticate(Landroid/hardware/biometrics/CryptoObject;Landroid/os/CancellationSignal;Landroid/hardware/face/FaceManager$AuthenticationCallback;Landroid/os/Handler;IZ)V
.end method

.method public abstract enroll(I[BLandroid/os/CancellationSignal;Landroid/hardware/face/FaceManager$EnrollmentCallback;[I)V
.end method

.method public abstract enroll(I[BLandroid/os/CancellationSignal;Landroid/hardware/face/FaceManager$EnrollmentCallback;[ILandroid/view/Surface;Z)V
.end method

.method public abstract enroll([BLandroid/os/CancellationSignal;ILandroid/hardware/face/FaceManager$EnrollmentCallback;Landroid/view/Surface;Landroid/graphics/RectF;Landroid/graphics/RectF;I)V
.end method

.method public abstract extCmd(II)I
.end method

.method public abstract generateChallenge(IILandroid/hardware/face/FaceManager$GenerateChallengeCallback;)V
.end method

.method public abstract generateChallenge(ILandroid/hardware/face/FaceManager$GenerateChallengeCallback;)V
.end method

.method public abstract getEnrolledFaces()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/face/Face;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEnrolledFaces(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/face/Face;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFaceManager(Landroid/content/Context;Landroid/hardware/face/IFaceService;)Landroid/hardware/face/FaceManager;
.end method

.method public abstract getFaceManger()Landroid/hardware/face/FaceManager;
.end method

.method public abstract getFeature(IILandroid/hardware/face/FaceManager$GetFeatureCallback;)V
.end method

.method public abstract hasEnrolledTemplates()Z
.end method

.method public abstract hasEnrolledTemplates(I)Z
.end method

.method public abstract isHardwareDetected()Z
.end method

.method public abstract remove(Landroid/hardware/face/Face;ILandroid/hardware/face/FaceManager$RemovalCallback;)V
.end method

.method public abstract revokeChallenge(IIJ)V
.end method

.method public abstract setFeature(IIZ[BLandroid/hardware/face/FaceManager$SetFeatureCallback;)V
.end method
