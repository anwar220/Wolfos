# classes3.dex

.class public final Landroid/util/MiuiFreeformPcUtilStub$SingletonHolder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/MiuiFreeformPcUtilStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Landroid/util/MiuiFreeformPcUtilStub;


# direct methods
.method static bridge synthetic -$$Nest$sfgetINSTANCE()Landroid/util/MiuiFreeformPcUtilStub;
    .registers 1

    sget-object v0, Landroid/util/MiuiFreeformPcUtilStub$SingletonHolder;->INSTANCE:Landroid/util/MiuiFreeformPcUtilStub;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    const-class v0, Landroid/util/MiuiFreeformPcUtilStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/MiuiFreeformPcUtilStub;

    sput-object v0, Landroid/util/MiuiFreeformPcUtilStub$SingletonHolder;->INSTANCE:Landroid/util/MiuiFreeformPcUtilStub;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
