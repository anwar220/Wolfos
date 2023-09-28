# classes4.dex

.class public interface abstract Lcom/android/internal/policy/TransitionAnimationStub;
.super Ljava/lang/Object;


# direct methods
.method public static newInstance()Lcom/android/internal/policy/TransitionAnimationStub;
    .registers 1

    const-class v0, Lcom/android/internal/policy/TransitionAnimationStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/TransitionAnimationStub;

    return-object v0
.end method


# virtual methods
.method public abstract allowCustomTaskAnimation(Ljava/lang/String;)Z
.end method
