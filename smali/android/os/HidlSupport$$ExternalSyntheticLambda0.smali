# classes3.dex

.class public final synthetic Landroid/os/HidlSupport$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/ToIntFunction;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .registers 2

    invoke-static {p1}, Landroid/os/HidlSupport;->lambda$deepHashCode$2(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
