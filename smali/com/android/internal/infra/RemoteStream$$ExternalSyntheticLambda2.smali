# classes4.dex

.class public final synthetic Lcom/android/internal/infra/RemoteStream$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyOrThrow(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/io/InputStream;

    invoke-static {p1}, Lcom/android/internal/infra/RemoteStream;->readAll(Ljava/io/InputStream;)[B

    move-result-object p1

    return-object p1
.end method
