# classes2.dex

.class public final synthetic Landroid/media/MediaFormat$FilteredMappedKeySet$KeyIterator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/media/MediaFormat$FilteredMappedKeySet$KeyIterator;


# direct methods
.method public synthetic constructor <init>(Landroid/media/MediaFormat$FilteredMappedKeySet$KeyIterator;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/MediaFormat$FilteredMappedKeySet$KeyIterator$$ExternalSyntheticLambda0;->f$0:Landroid/media/MediaFormat$FilteredMappedKeySet$KeyIterator;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Landroid/media/MediaFormat$FilteredMappedKeySet$KeyIterator$$ExternalSyntheticLambda0;->f$0:Landroid/media/MediaFormat$FilteredMappedKeySet$KeyIterator;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/media/MediaFormat$FilteredMappedKeySet$KeyIterator;->lambda$new$0$android-media-MediaFormat$FilteredMappedKeySet$KeyIterator(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
