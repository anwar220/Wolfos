# classes.dex

.class public final synthetic Landroid/app/ActivityThread$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/function/HexConsumer;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7

    check-cast p1, Landroid/app/ActivityThread;

    check-cast p2, Landroid/os/IBinder;

    check-cast p3, Lcom/android/internal/app/IVoiceInteractor;

    check-cast p4, Landroid/os/CancellationSignal;

    check-cast p5, Landroid/os/RemoteCallback;

    check-cast p6, Ljava/lang/Integer;

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result p6

    move-object p0, p1

    move-object p1, p2

    move-object p2, p3

    move-object p3, p4

    move-object p4, p5

    move p5, p6

    invoke-static/range {p0 .. p5}, Landroid/app/ActivityThread;->$r8$lambda$ndFjmKeZ5VqdkKp_jop654cr0J0(Landroid/app/ActivityThread;Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/CancellationSignal;Landroid/os/RemoteCallback;I)V

    return-void
.end method
