# classes2.dex

.class public interface abstract Landroid/view/animation/AnimationUtilsStub;
.super Ljava/lang/Object;


# static fields
.field public static final TAG:Ljava/lang/String; = "AnimationUtilsStub"


# direct methods
.method public static getInstance()Landroid/view/animation/AnimationUtilsStub;
    .registers 1

    const-class v0, Landroid/view/animation/AnimationUtilsStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AnimationUtilsStub;

    return-object v0
.end method


# virtual methods
.method public abstract getSpringInterpolator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)Landroid/view/animation/BaseInterpolator;
.end method

.method public getTranslateWithClipAnimation(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/animation/Animation;
    .registers 4

    const/4 v0, 0x0

    return-object v0
.end method
