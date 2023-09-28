# classes4.dex

.class public interface abstract Lcom/xiaomi/freeform/MiuiFreeformStub;
.super Ljava/lang/Object;


# direct methods
.method public static getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;
    .registers 1

    const-class v0, Lcom/xiaomi/freeform/MiuiFreeformStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/freeform/MiuiFreeformStub;

    return-object v0
.end method


# virtual methods
.method public varargs abstract callStaticObjectMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract getDisplayMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
.end method

.method public abstract getFixedRotationAppList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHeight(Landroid/content/res/Resources;I)I
.end method

.method public abstract getListAboutNoNeedInFreeform()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMetrics(Landroid/content/res/Resources;Landroid/util/DisplayMetrics;)V
.end method

.method public abstract getNavBarPosition()I
.end method

.method public abstract getRotationFromDisplayApp()Ljava/util/List;
.end method

.method public abstract getSize(Landroid/content/res/Resources;Landroid/graphics/Point;)V
.end method

.method public abstract getSurfaceViewVisable(Landroid/view/SurfaceView;Landroid/content/res/Resources;ILjava/lang/String;)V
.end method

.method public abstract getWidth(Landroid/content/res/Resources;I)I
.end method

.method public abstract getWindowVisibleDisplayFrame(Landroid/view/Window;Landroid/content/Context;Landroid/graphics/Rect;Landroid/content/ComponentName;)V
.end method

.method public abstract getsResumedActivityName()Ljava/lang/String;
.end method

.method public abstract hasSmallFreeformFeature()Z
.end method

.method public varargs abstract invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract isInstanceOfMiuiDecorCaptionView(Lcom/android/internal/widget/DecorCaptionView;)Z
.end method

.method public abstract isPrevent(Landroid/view/View;ILandroid/content/ComponentName;I)Z
.end method

.method public abstract updateApplicationContext(Landroid/content/Context;Landroid/app/Application;Landroid/content/res/Configuration;)V
.end method

.method public abstract updateCaptionColor(Landroid/content/Context;Lcom/android/internal/widget/DecorCaptionView;Lcom/android/internal/policy/PhoneWindow;)V
.end method

.method public abstract updateFreeformConfiguration(Landroid/content/res/Configuration;Ljava/lang/String;Landroid/app/Application;)V
.end method
