# classes4.dex

.class public interface abstract Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/listeners/ListenerExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ListenerOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T",
        "Listener:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public onComplete(Z)V
    .registers 2

    return-void
.end method

.method public onFailure(Ljava/lang/Exception;)V
    .registers 2

    return-void
.end method

.method public onPostExecute(Z)V
    .registers 2

    return-void
.end method

.method public onPreExecute()V
    .registers 1

    return-void
.end method

.method public abstract operate(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Listener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
