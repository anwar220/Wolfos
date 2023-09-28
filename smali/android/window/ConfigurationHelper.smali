# classes4.dex

.class public Landroid/window/ConfigurationHelper;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static freeTextLayoutCachesIfNeeded(I)V
    .registers 2

    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_7

    invoke-static {}, Landroid/graphics/Canvas;->freeTextLayoutCaches()V

    :cond_7
    return-void
.end method

.method public static isDifferentDisplay(II)Z
    .registers 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_7

    if-eq p0, p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private static isDisplayRotationChanged(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
    .registers 6

    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    move-result v0

    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_17

    if-ne v0, v3, :cond_13

    goto :goto_17

    :cond_13
    if-eq v0, v1, :cond_16

    const/4 v2, 0x1

    :cond_16
    return v2

    :cond_17
    :goto_17
    return v2
.end method

.method public static shouldUpdateResources(Landroid/os/IBinder;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/Configuration;ZLjava/lang/Boolean;)Z
    .registers 8

    const/4 v0, 0x1

    if-nez p1, :cond_4

    return v0

    :cond_4
    if-eqz p4, :cond_7

    return v0

    :cond_7
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v1

    invoke-virtual {v1, p0, p3}, Landroid/app/ResourcesManager;->isSameResourcesOverrideConfig(Landroid/os/IBinder;Landroid/content/res/Configuration;)Z

    move-result v1

    if-nez v1, :cond_12

    return v0

    :cond_12
    invoke-static {p1, p2}, Landroid/window/ConfigurationHelper;->shouldUpdateWindowMetricsBounds(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_19

    return v0

    :cond_19
    invoke-static {p1, p2}, Landroid/window/ConfigurationHelper;->isDisplayRotationChanged(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_20

    return v0

    :cond_20
    if-nez p5, :cond_2b

    invoke-virtual {p1, p2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    if-eqz v1, :cond_29

    goto :goto_2f

    :cond_29
    const/4 v0, 0x0

    goto :goto_2f

    :cond_2b
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_2f
    return v0
.end method

.method private static shouldUpdateWindowMetricsBounds(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
    .registers 7

    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_25

    goto :goto_27

    :cond_25
    const/4 v4, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 v4, 0x1

    :goto_28
    return v4
.end method
