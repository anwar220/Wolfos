# classes3.dex

.class public interface abstract Landroid/service/autofill/SavedDatasetsInfoCallback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/SavedDatasetsInfoCallback$Error;
    }
.end annotation


# static fields
.field public static final ERROR_NEEDS_USER_ACTION:I = 0x2

.field public static final ERROR_OTHER:I = 0x0

.field public static final ERROR_UNSUPPORTED:I = 0x1


# virtual methods
.method public abstract onError(I)V
.end method

.method public abstract onSuccess(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/service/autofill/SavedDatasetsInfo;",
            ">;)V"
        }
    .end annotation
.end method
