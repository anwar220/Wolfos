# classes.dex

.class public final synthetic Landroid/app/SystemServiceRegistry$16$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Supplier;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Landroid/app/SystemServiceRegistry$16;->lambda$createService$0()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
