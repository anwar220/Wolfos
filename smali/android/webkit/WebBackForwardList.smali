# classes4.dex

.class public abstract Landroid/webkit/WebBackForwardList;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract clone()Landroid/webkit/WebBackForwardList;
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/webkit/WebBackForwardList;->clone()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method public abstract getCurrentIndex()I
.end method

.method public abstract getCurrentItem()Landroid/webkit/WebHistoryItem;
.end method

.method public abstract getItemAtIndex(I)Landroid/webkit/WebHistoryItem;
.end method

.method public abstract getSize()I
.end method
