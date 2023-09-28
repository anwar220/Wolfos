# classes4.dex

.class public final Lmiui/window/MiuiEmbeddingWindowStub$SingletonHolder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/window/MiuiEmbeddingWindowStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lmiui/window/MiuiEmbeddingWindowStub;

.field private static final STUB_IMPL:Ljava/lang/String; = "com.miui.window.MiuiEmbeddingWindow"


# direct methods
.method static bridge synthetic -$$Nest$sfgetINSTANCE()Lmiui/window/MiuiEmbeddingWindowStub;
    .registers 1

    sget-object v0, Lmiui/window/MiuiEmbeddingWindowStub$SingletonHolder;->INSTANCE:Lmiui/window/MiuiEmbeddingWindowStub;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lmiui/window/MiuiEmbeddingWindowStub$SingletonHolder;->getStub()Lmiui/window/MiuiEmbeddingWindowStub;

    move-result-object v0

    sput-object v0, Lmiui/window/MiuiEmbeddingWindowStub$SingletonHolder;->INSTANCE:Lmiui/window/MiuiEmbeddingWindowStub;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getStub()Lmiui/window/MiuiEmbeddingWindowStub;
    .registers 4

    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    sget-boolean v1, Lmiui/window/MiuiEmbeddingWindowStub;->ENABLED:Z

    if-eqz v1, :cond_1e

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getBaseClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eqz v1, :cond_1e

    const-string v2, "com.miui.window.MiuiEmbeddingWindow"

    const/4 v3, 0x1

    invoke-static {v2, v3, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/window/MiuiEmbeddingWindowStub;
    :try_end_1d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_1d} :catch_1f
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_1d} :catch_1f
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_1d} :catch_1f
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_1d} :catch_1f

    return-object v2

    :cond_1e
    goto :goto_20

    :catch_1f
    move-exception v0

    :goto_20
    new-instance v0, Lmiui/window/MiuiEmbeddingWindowStub$SingletonHolder$1;

    invoke-direct {v0}, Lmiui/window/MiuiEmbeddingWindowStub$SingletonHolder$1;-><init>()V

    return-object v0
.end method
