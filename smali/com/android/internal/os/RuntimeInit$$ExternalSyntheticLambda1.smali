# classes4.dex

.class public final synthetic Lcom/android/internal/os/RuntimeInit$$ExternalSyntheticLambda1;
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

    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->lambda$commonInit$0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
