# classes4.dex

.class public final Lcom/android/internal/policy/DecorViewPcStub$SingletonHolder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/DecorViewPcStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/internal/policy/DecorViewPcStub;


# direct methods
.method static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/internal/policy/DecorViewPcStub;
    .registers 1

    sget-object v0, Lcom/android/internal/policy/DecorViewPcStub$SingletonHolder;->INSTANCE:Lcom/android/internal/policy/DecorViewPcStub;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/internal/policy/DecorViewPcStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/DecorViewPcStub;

    sput-object v0, Lcom/android/internal/policy/DecorViewPcStub$SingletonHolder;->INSTANCE:Lcom/android/internal/policy/DecorViewPcStub;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
