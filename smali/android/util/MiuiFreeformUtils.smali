# classes3.dex

.class public Landroid/util/MiuiFreeformUtils;
.super Ljava/lang/Object;


# static fields
.field private static imp:Lcom/xiaomi/freeform/MiuiFreeformStub;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getInstance()Lcom/xiaomi/freeform/MiuiFreeformStub;

    move-result-object v0

    sput-object v0, Landroid/util/MiuiFreeformUtils;->imp:Lcom/xiaomi/freeform/MiuiFreeformStub;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs callStaticObjectMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11
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

    sget-object v0, Landroid/util/MiuiFreeformUtils;->imp:Lcom/xiaomi/freeform/MiuiFreeformStub;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/xiaomi/freeform/MiuiFreeformStub;->callStaticObjectMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .registers 3

    sget-object v0, Landroid/util/MiuiFreeformUtils;->imp:Lcom/xiaomi/freeform/MiuiFreeformStub;

    invoke-interface {v0, p0, p1}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getDisplayMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    return-void
.end method

.method public static getFixedRotationAppList()Ljava/util/List;
    .registers 2

    sget-object v0, Landroid/util/MiuiFreeformUtils;->imp:Lcom/xiaomi/freeform/MiuiFreeformStub;

    invoke-interface {v0}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getFixedRotationAppList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_a

    move-object v1, v0

    goto :goto_f

    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_f
    return-object v1
.end method

.method public static getHeight(Landroid/content/res/Resources;I)I
    .registers 4

    sget-object v0, Landroid/util/MiuiFreeformUtils;->imp:Lcom/xiaomi/freeform/MiuiFreeformStub;

    invoke-interface {v0, p0, p1}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getHeight(Landroid/content/res/Resources;I)I

    move-result v0

    if-eqz v0, :cond_a

    move v1, v0

    goto :goto_b

    :cond_a
    move v1, p1

    :goto_b
    return v1
.end method

.method public static getListAboutNoNeedInFreeform()Ljava/util/List;
    .registers 2

    sget-object v0, Landroid/util/MiuiFreeformUtils;->imp:Lcom/xiaomi/freeform/MiuiFreeformStub;

    invoke-interface {v0}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getListAboutNoNeedInFreeform()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_a

    move-object v1, v0

    goto :goto_f

    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_f
    return-object v1
.end method

.method public static getMetrics(Landroid/content/res/Resources;Landroid/util/DisplayMetrics;)V
    .registers 3

    sget-object v0, Landroid/util/MiuiFreeformUtils;->imp:Lcom/xiaomi/freeform/MiuiFreeformStub;

    invoke-interface {v0, p0, p1}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getMetrics(Landroid/content/res/Resources;Landroid/util/DisplayMetrics;)V

    return-void
.end method

.method public static getNavBarPosition()I
    .registers 1

    sget-object v0, Landroid/util/MiuiFreeformUtils;->imp:Lcom/xiaomi/freeform/MiuiFreeformStub;

    invoke-interface {v0}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getNavBarPosition()I

    move-result v0

    return v0
.end method

.method public static getRotationFromDisplayApp()Ljava/util/List;
    .registers 2

    sget-object v0, Landroid/util/MiuiFreeformUtils;->imp:Lcom/xiaomi/freeform/MiuiFreeformStub;

    invoke-interface {v0}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getRotationFromDisplayApp()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_a

    move-object v1, v0

    goto :goto_f

    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_f
    return-object v1
.end method

.method public static getSize(Landroid/content/res/Resources;Landroid/graphics/Point;)V
    .registers 3

    sget-object v0, Landroid/util/MiuiFreeformUtils;->imp:Lcom/xiaomi/freeform/MiuiFreeformStub;

    invoke-interface {v0, p0, p1}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getSize(Landroid/content/res/Resources;Landroid/graphics/Point;)V

    return-void
.end method

.method public static getSurfaceViewVisable(Landroid/view/SurfaceView;Landroid/content/res/Resources;ILjava/lang/String;)V
    .registers 5

    sget-object v0, Landroid/util/MiuiFreeformUtils;->imp:Lcom/xiaomi/freeform/MiuiFreeformStub;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getSurfaceViewVisable(Landroid/view/SurfaceView;Landroid/content/res/Resources;ILjava/lang/String;)V

    return-void
.end method

.method public static getWidth(Landroid/content/res/Resources;I)I
    .registers 4

    sget-object v0, Landroid/util/MiuiFreeformUtils;->imp:Lcom/xiaomi/freeform/MiuiFreeformStub;

    invoke-interface {v0, p0, p1}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getWidth(Landroid/content/res/Resources;I)I

    move-result v0

    if-eqz v0, :cond_a

    move v1, v0

    goto :goto_b

    :cond_a
    move v1, p1

    :goto_b
    return v1
.end method

.method public static getWindowVisibleDisplayFrame(Landroid/view/Window;Landroid/content/Context;Landroid/graphics/Rect;Landroid/content/ComponentName;)V
    .registers 5

    sget-object v0, Landroid/util/MiuiFreeformUtils;->imp:Lcom/xiaomi/freeform/MiuiFreeformStub;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getWindowVisibleDisplayFrame(Landroid/view/Window;Landroid/content/Context;Landroid/graphics/Rect;Landroid/content/ComponentName;)V

    return-void
.end method

.method public static getsResumedActivityName()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/util/MiuiFreeformUtils;->imp:Lcom/xiaomi/freeform/MiuiFreeformStub;

    invoke-interface {v0}, Lcom/xiaomi/freeform/MiuiFreeformStub;->getsResumedActivityName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasSmallFreeformFeature()Z
    .registers 1

    sget-object v0, Landroid/util/MiuiFreeformUtils;->imp:Lcom/xiaomi/freeform/MiuiFreeformStub;

    invoke-interface {v0}, Lcom/xiaomi/freeform/MiuiFreeformStub;->hasSmallFreeformFeature()Z

    move-result v0

    return v0
.end method

.method public static varargs invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    sget-object v0, Landroid/util/MiuiFreeformUtils;->imp:Lcom/xiaomi/freeform/MiuiFreeformStub;

    invoke-interface {v0, p0, p1, p2}, Lcom/xiaomi/freeform/MiuiFreeformStub;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static isInstanceOfMiuiDecorCaptionView(Lcom/android/internal/widget/DecorCaptionView;)Z
    .registers 2

    sget-object v0, Landroid/util/MiuiFreeformUtils;->imp:Lcom/xiaomi/freeform/MiuiFreeformStub;

    invoke-interface {v0, p0}, Lcom/xiaomi/freeform/MiuiFreeformStub;->isInstanceOfMiuiDecorCaptionView(Lcom/android/internal/widget/DecorCaptionView;)Z

    move-result v0

    return v0
.end method

.method public static isPrevent(Landroid/view/View;ILandroid/content/ComponentName;I)Z
    .registers 5

    sget-object v0, Landroid/util/MiuiFreeformUtils;->imp:Lcom/xiaomi/freeform/MiuiFreeformStub;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/xiaomi/freeform/MiuiFreeformStub;->isPrevent(Landroid/view/View;ILandroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public static updateApplicationContext(Landroid/content/Context;Landroid/app/Application;Landroid/content/res/Configuration;)V
    .registers 4

    sget-object v0, Landroid/util/MiuiFreeformUtils;->imp:Lcom/xiaomi/freeform/MiuiFreeformStub;

    invoke-interface {v0, p0, p1, p2}, Lcom/xiaomi/freeform/MiuiFreeformStub;->updateApplicationContext(Landroid/content/Context;Landroid/app/Application;Landroid/content/res/Configuration;)V

    return-void
.end method

.method public static updateCaptionColor(Landroid/content/Context;Lcom/android/internal/widget/DecorCaptionView;Lcom/android/internal/policy/PhoneWindow;)V
    .registers 4

    sget-object v0, Landroid/util/MiuiFreeformUtils;->imp:Lcom/xiaomi/freeform/MiuiFreeformStub;

    invoke-interface {v0, p0, p1, p2}, Lcom/xiaomi/freeform/MiuiFreeformStub;->updateCaptionColor(Landroid/content/Context;Lcom/android/internal/widget/DecorCaptionView;Lcom/android/internal/policy/PhoneWindow;)V

    return-void
.end method

.method public static updateFreeformConfiguration(Landroid/content/res/Configuration;Ljava/lang/String;Landroid/app/Application;)V
    .registers 4

    sget-object v0, Landroid/util/MiuiFreeformUtils;->imp:Lcom/xiaomi/freeform/MiuiFreeformStub;

    invoke-interface {v0, p0, p1, p2}, Lcom/xiaomi/freeform/MiuiFreeformStub;->updateFreeformConfiguration(Landroid/content/res/Configuration;Ljava/lang/String;Landroid/app/Application;)V

    return-void
.end method
