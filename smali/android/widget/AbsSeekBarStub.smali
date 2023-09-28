# classes4.dex

.class public interface abstract Landroid/widget/AbsSeekBarStub;
.super Ljava/lang/Object;


# direct methods
.method public static newInstance()Landroid/widget/AbsSeekBarStub;
    .registers 1

    const-class v0, Landroid/widget/AbsSeekBarStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsSeekBarStub;

    return-object v0
.end method


# virtual methods
.method public abstract captureState(Landroid/widget/ProgressBar;)V
.end method

.method public abstract performEdgeReachedHaptic(Landroid/widget/ProgressBar;)V
.end method
