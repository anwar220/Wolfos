# classes4.dex

.class public interface abstract Lmiui/window/MiuiEmbeddingWindowStub;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/window/MiuiEmbeddingWindowStub$SingletonHolder;
    }
.end annotation


# static fields
.field public static final ENABLED:Z

.field public static final IS_FOLD:Z

.field public static final IS_TABLET:Z

.field public static final RESULT_IS_NEED_EVENT_MAPPING:Ljava/lang/String; = "RESULT_IS_NEED_EVENT_MAPPING"

.field public static final RESULT_MAPPING_HOT_REGION:Ljava/lang/String; = "RESULT_MAPPING_HOT_REGION"

.field public static final RESULT_MID_REGION:Ljava/lang/String; = "RESULT_MID_REGION"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string/jumbo v0, "persist.sys.muiltdisplay_type"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    move v0, v1

    :goto_e
    sput-boolean v0, Lmiui/window/MiuiEmbeddingWindowStub;->IS_FOLD:Z

    const-string/jumbo v0, "ro.build.characteristics"

    const-string v2, ""

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "tablet"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/window/MiuiEmbeddingWindowStub;->IS_TABLET:Z

    const-string/jumbo v0, "ro.config.miui_activity_embedding_enable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmiui/window/MiuiEmbeddingWindowStub;->ENABLED:Z

    return-void
.end method

.method public static get()Lmiui/window/MiuiEmbeddingWindowStub;
    .registers 1

    invoke-static {}, Lmiui/window/MiuiEmbeddingWindowStub$SingletonHolder;->-$$Nest$sfgetINSTANCE()Lmiui/window/MiuiEmbeddingWindowStub;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public enable()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getEmbeddedApps()Ljava/util/Map;
    .registers 2

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object v0
.end method

.method public getEmbeddingPortraitBounds()Landroid/graphics/Rect;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public initSystemRules()V
    .registers 1

    return-void
.end method

.method public isAppNeedRelaunch(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public isDisableSensor(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public isEmbeddingEnabledForPackage(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public overrideDisplayRotation(Landroid/view/DisplayInfo;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public sandboxDisplayInfo(Landroid/view/DisplayInfo;Landroid/content/res/Resources;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public setEmbeddedEnable(Ljava/lang/String;Z)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public setEmbeddingHomePage(Landroid/os/IBinder;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method
