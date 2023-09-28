# classes.dex

.class public Landroid/content/res/ThemeManagerStub;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "ThemeManagerStub"

.field private static final sIMiuiConfiguration:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final sMiuiThemeHelper:Landroid/content/res/IMiuiThemeHelper;

.field private static final sResource:Landroid/content/res/IMiuiResource;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_3
    const-string v3, "android.content.res.IMiuiResourceImpl"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/IMiuiResource;

    move-object v0, v4

    const-string v4, "android.content.res.IMiuiThemeHelperImpl"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/IMiuiThemeHelper;

    move-object v1, v5

    const-string v5, "android.content.res.MiuiConfiguration"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_23} :catch_25

    move-object v2, v5

    goto :goto_3e

    :catch_25
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " init ThemeManagerStub: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ThemeManagerStub"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3e
    sput-object v0, Landroid/content/res/ThemeManagerStub;->sResource:Landroid/content/res/IMiuiResource;

    sput-object v1, Landroid/content/res/ThemeManagerStub;->sMiuiThemeHelper:Landroid/content/res/IMiuiThemeHelper;

    sput-object v2, Landroid/content/res/ThemeManagerStub;->sIMiuiConfiguration:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendZygoteGid()Ljava/lang/String;
    .registers 3

    sget-object v0, Landroid/content/res/ThemeManagerStub;->sMiuiThemeHelper:Landroid/content/res/IMiuiThemeHelper;

    if-eqz v0, :cond_1e

    invoke-interface {v0}, Landroid/content/res/IMiuiThemeHelper;->getUid()I

    move-result v0

    if-lez v0, :cond_1e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1e
    const-string v0, ""

    return-object v0
.end method

.method public static createMiuiConfiguration()Landroid/content/res/IMiuiConfiguration;
    .registers 3

    sget-object v0, Landroid/content/res/ThemeManagerStub;->sIMiuiConfiguration:Ljava/lang/Class;

    if-eqz v0, :cond_24

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/IMiuiConfiguration;
    :try_end_a
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_a} :catch_b
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create MiuiConfiguration fail,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ThemeManagerStub"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    const/4 v0, 0x0

    return-object v0
.end method

.method public static createMiuiResources()Landroid/content/res/Resources;
    .registers 1

    sget-object v0, Landroid/content/res/ThemeManagerStub;->sResource:Landroid/content/res/IMiuiResource;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Landroid/content/res/IMiuiResource;->createResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public static createPathFromPathData(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Path;
    .registers 3

    sget-object v0, Landroid/content/res/ThemeManagerStub;->sMiuiThemeHelper:Landroid/content/res/IMiuiThemeHelper;

    if-eqz v0, :cond_9

    invoke-interface {v0, p0}, Landroid/content/res/IMiuiThemeHelper;->createPathForMiui(Landroid/content/res/Resources;)Landroid/graphics/Path;

    move-result-object v0

    return-object v0

    :cond_9
    invoke-static {p1}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v0

    return-object v0
.end method

.method public static createResources(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)Landroid/content/res/Resources;
    .registers 4

    sget-object v0, Landroid/content/res/ThemeManagerStub;->sResource:Landroid/content/res/IMiuiResource;

    if-eqz v0, :cond_9

    invoke-interface {v0, p0, p1, p2}, Landroid/content/res/IMiuiResource;->createResources(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0

    :cond_9
    new-instance v0, Landroid/content/res/Resources;

    invoke-direct {v0, p0, p1, p2}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    return-object v0
.end method

.method public static createResources(Ljava/lang/ClassLoader;)Landroid/content/res/Resources;
    .registers 2

    sget-object v0, Landroid/content/res/ThemeManagerStub;->sResource:Landroid/content/res/IMiuiResource;

    if-eqz v0, :cond_9

    invoke-interface {v0, p0}, Landroid/content/res/IMiuiResource;->createResources(Ljava/lang/ClassLoader;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0

    :cond_9
    new-instance v0, Landroid/content/res/Resources;

    invoke-direct {v0, p0}, Landroid/content/res/Resources;-><init>(Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public static createResourcesImpl(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/view/DisplayAdjustments;)Landroid/content/res/ResourcesImpl;
    .registers 5

    sget-object v0, Landroid/content/res/ThemeManagerStub;->sResource:Landroid/content/res/IMiuiResource;

    if-eqz v0, :cond_9

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/content/res/IMiuiResource;->createResourcesImpl(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/view/DisplayAdjustments;)Landroid/content/res/ResourcesImpl;

    move-result-object v0

    return-object v0

    :cond_9
    new-instance v0, Landroid/content/res/ResourcesImpl;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/content/res/ResourcesImpl;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/view/DisplayAdjustments;)V

    return-object v0
.end method

.method public static createTypedArray(Landroid/content/res/Resources;)Landroid/content/res/TypedArray;
    .registers 2

    sget-object v0, Landroid/content/res/ThemeManagerStub;->sResource:Landroid/content/res/IMiuiResource;

    if-eqz v0, :cond_9

    invoke-interface {v0, p0}, Landroid/content/res/IMiuiResource;->createTypedArray(Landroid/content/res/Resources;)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0

    :cond_9
    new-instance v0, Landroid/content/res/TypedArray;

    invoke-direct {v0, p0}, Landroid/content/res/TypedArray;-><init>(Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public static drawMiuiStroke(Landroid/graphics/Canvas;Landroid/graphics/Path;)V
    .registers 3

    sget-object v0, Landroid/content/res/ThemeManagerStub;->sMiuiThemeHelper:Landroid/content/res/IMiuiThemeHelper;

    if-eqz v0, :cond_7

    invoke-interface {v0, p0, p1}, Landroid/content/res/IMiuiThemeHelper;->drawMiuiStroke(Landroid/graphics/Canvas;Landroid/graphics/Path;)V

    :cond_7
    return-void
.end method

.method public static getDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .registers 11

    sget-object v0, Landroid/content/res/ThemeManagerStub;->sMiuiThemeHelper:Landroid/content/res/IMiuiThemeHelper;

    if-eqz v0, :cond_e

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/content/res/IMiuiThemeHelper;->getDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_e
    const/4 v0, 0x0

    return-object v0
.end method

.method public static handleExtraConfigurationChanges(ILandroid/content/res/Configuration;)V
    .registers 3

    sget-object v0, Landroid/content/res/ThemeManagerStub;->sMiuiThemeHelper:Landroid/content/res/IMiuiThemeHelper;

    if-eqz v0, :cond_7

    invoke-interface {v0, p0, p1}, Landroid/content/res/IMiuiThemeHelper;->handleExtraConfigurationChangesForSystem(ILandroid/content/res/Configuration;)V

    :cond_7
    return-void
.end method

.method public static handleExtraConfigurationChangesForSystem(ILandroid/content/res/Configuration;)V
    .registers 3

    sget-object v0, Landroid/content/res/ThemeManagerStub;->sMiuiThemeHelper:Landroid/content/res/IMiuiThemeHelper;

    if-eqz v0, :cond_7

    invoke-interface {v0, p0, p1}, Landroid/content/res/IMiuiThemeHelper;->handleExtraConfigurationChangesForSystem(ILandroid/content/res/Configuration;)V

    :cond_7
    return-void
.end method

.method public static initActivityManagerServiceInjector(Landroid/content/Context;)V
    .registers 2

    sget-object v0, Landroid/content/res/ThemeManagerStub;->sMiuiThemeHelper:Landroid/content/res/IMiuiThemeHelper;

    if-eqz v0, :cond_7

    invoke-interface {v0, p0}, Landroid/content/res/IMiuiThemeHelper;->initActivityManagerServiceInjector(Landroid/content/Context;)V

    :cond_7
    return-void
.end method

.method public static initMiuiResource(Landroid/content/res/Resources;Ljava/lang/String;)V
    .registers 3

    sget-object v0, Landroid/content/res/ThemeManagerStub;->sResource:Landroid/content/res/IMiuiResource;

    if-eqz v0, :cond_7

    invoke-interface {v0, p0, p1}, Landroid/content/res/IMiuiResource;->initMiuiResource(Landroid/content/res/Resources;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public static needNewResources(I)Z
    .registers 2

    sget-object v0, Landroid/content/res/ThemeManagerStub;->sMiuiThemeHelper:Landroid/content/res/IMiuiThemeHelper;

    if-eqz v0, :cond_9

    invoke-interface {v0, p0}, Landroid/content/res/IMiuiThemeHelper;->needNewResources(I)Z

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method
