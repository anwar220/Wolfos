# classes4.dex

.class public interface abstract Lcom/android/internal/policy/DecorViewPcStub;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/DecorViewPcStub$SingletonHolder;
    }
.end annotation


# direct methods
.method public static getInstance()Lcom/android/internal/policy/DecorViewPcStub;
    .registers 1

    invoke-static {}, Lcom/android/internal/policy/DecorViewPcStub$SingletonHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/internal/policy/DecorViewPcStub;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract getCaptionInsetsHeight(Lcom/android/internal/widget/DecorCaptionView;)I
.end method

.method public abstract getDecorCaptionView(Landroid/view/LayoutInflater;)Landroid/view/View;
.end method
