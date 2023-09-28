# classes.dex

.class public Landroid/graphics/MiuiForceDarkConfigManagerStub;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "MiuiForceDarkConfigManagerStub"

.field private static volatile sInstance:Landroid/graphics/MiuiForceDarkConfigManager;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-string/jumbo v0, "static initializer: getInstance failed"

    const-string v1, "MiuiForceDarkConfigManagerStub"

    :try_start_5
    const-string v2, "android.graphics.MiuiForceDarkConfigManagerImpl"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_23

    const-string v3, "getInstance"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_23

    const/4 v5, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/MiuiForceDarkConfigManager;

    sput-object v4, Landroid/graphics/MiuiForceDarkConfigManagerStub;->sInstance:Landroid/graphics/MiuiForceDarkConfigManager;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_23} :catch_31
    .catchall {:try_start_5 .. :try_end_23} :catchall_28

    :cond_23
    sget-object v2, Landroid/graphics/MiuiForceDarkConfigManagerStub;->sInstance:Landroid/graphics/MiuiForceDarkConfigManager;

    if-nez v2, :cond_39

    goto :goto_36

    :catchall_28
    move-exception v2

    sget-object v3, Landroid/graphics/MiuiForceDarkConfigManagerStub;->sInstance:Landroid/graphics/MiuiForceDarkConfigManager;

    if-nez v3, :cond_30

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    throw v2

    :catch_31
    move-exception v2

    sget-object v2, Landroid/graphics/MiuiForceDarkConfigManagerStub;->sInstance:Landroid/graphics/MiuiForceDarkConfigManager;

    if-nez v2, :cond_39

    :goto_36
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMainRule()I
    .registers 1

    sget-object v0, Landroid/graphics/MiuiForceDarkConfigManagerStub;->sInstance:Landroid/graphics/MiuiForceDarkConfigManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/graphics/MiuiForceDarkConfigManagerStub;->sInstance:Landroid/graphics/MiuiForceDarkConfigManager;

    invoke-interface {v0}, Landroid/graphics/MiuiForceDarkConfigManager;->getMainRule()I

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static getSecondaryRule()I
    .registers 1

    sget-object v0, Landroid/graphics/MiuiForceDarkConfigManagerStub;->sInstance:Landroid/graphics/MiuiForceDarkConfigManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/graphics/MiuiForceDarkConfigManagerStub;->sInstance:Landroid/graphics/MiuiForceDarkConfigManager;

    invoke-interface {v0}, Landroid/graphics/MiuiForceDarkConfigManager;->getSecondaryRule()I

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static getTertiaryRule()I
    .registers 1

    sget-object v0, Landroid/graphics/MiuiForceDarkConfigManagerStub;->sInstance:Landroid/graphics/MiuiForceDarkConfigManager;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/graphics/MiuiForceDarkConfigManagerStub;->sInstance:Landroid/graphics/MiuiForceDarkConfigManager;

    invoke-interface {v0}, Landroid/graphics/MiuiForceDarkConfigManager;->getTertiaryRule()I

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static setConfig(FIII)V
    .registers 6

    sget-object v0, Landroid/graphics/MiuiForceDarkConfigManagerStub;->sInstance:Landroid/graphics/MiuiForceDarkConfigManager;

    if-eqz v0, :cond_a

    sget-object v0, Landroid/graphics/MiuiForceDarkConfigManagerStub;->sInstance:Landroid/graphics/MiuiForceDarkConfigManager;

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/graphics/MiuiForceDarkConfigManager;->setConfig(FIII)V

    goto :goto_11

    :cond_a
    const-string v0, "MiuiForceDarkConfigManagerStub"

    const-string v1, "can not find MiuiForceDarkConfigManager instance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_11
    return-void
.end method
