# classes3.dex

.class public Landroid/os/BinderStub;
.super Ljava/lang/Object;


# static fields
.field private static final INSTANCE:Landroid/os/BinderStub;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Landroid/os/BinderStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BinderStub;

    sput-object v0, Landroid/os/BinderStub;->INSTANCE:Landroid/os/BinderStub;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Landroid/os/BinderStub;
    .registers 1

    sget-object v0, Landroid/os/BinderStub;->INSTANCE:Landroid/os/BinderStub;

    return-object v0
.end method


# virtual methods
.method public dump(Landroid/os/ParcelFileDescriptor;)V
    .registers 2

    return-void
.end method

.method public isEnabled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public startTracking()V
    .registers 1

    return-void
.end method

.method public stopTracking(Z)V
    .registers 2

    return-void
.end method

.method track(Landroid/os/Binder;)V
    .registers 2

    return-void
.end method
