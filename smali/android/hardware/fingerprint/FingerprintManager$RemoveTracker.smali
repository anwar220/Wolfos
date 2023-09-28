# classes.dex

.class Landroid/hardware/fingerprint/FingerprintManager$RemoveTracker;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoveTracker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/fingerprint/FingerprintManager$RemoveTracker$RemoveRequest;
    }
.end annotation


# static fields
.field static final REMOVE_ALL:I = 0x2

.field static final REMOVE_SINGLE:I = 0x1


# instance fields
.field final mRemoveRequest:I

.field final mSingleFingerprint:Landroid/hardware/fingerprint/Fingerprint;


# direct methods
.method constructor <init>(ILandroid/hardware/fingerprint/Fingerprint;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/fingerprint/FingerprintManager$RemoveTracker;->mRemoveRequest:I

    iput-object p2, p0, Landroid/hardware/fingerprint/FingerprintManager$RemoveTracker;->mSingleFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    return-void
.end method
