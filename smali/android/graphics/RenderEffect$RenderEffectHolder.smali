# classes.dex

.class Landroid/graphics/RenderEffect$RenderEffectHolder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/RenderEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RenderEffectHolder"
.end annotation


# static fields
.field public static final RENDER_EFFECT_REGISTRY:Llibcore/util/NativeAllocationRegistry;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Landroid/graphics/RenderEffect;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Landroid/graphics/RenderEffect;->-$$Nest$smnativeGetFinalizer()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/graphics/RenderEffect$RenderEffectHolder;->RENDER_EFFECT_REGISTRY:Llibcore/util/NativeAllocationRegistry;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
