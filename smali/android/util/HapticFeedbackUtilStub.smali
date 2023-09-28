# classes3.dex

.class public interface abstract Landroid/util/HapticFeedbackUtilStub;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/HapticFeedbackUtilStub$SingletonHolder;
    }
.end annotation


# direct methods
.method public static getInstance()Landroid/util/HapticFeedbackUtilStub;
    .registers 1

    invoke-static {}, Landroid/util/HapticFeedbackUtilStub$SingletonHolder;->-$$Nest$sfgetINSTANCE()Landroid/util/HapticFeedbackUtilStub;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract isSupportLinearMotorVibrate(I)Z
.end method

.method public abstract performHapticFeedback(Landroid/content/Context;ZIZ)Z
.end method
