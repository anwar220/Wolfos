# classes4.dex

.class public final synthetic Lcom/android/internal/content/FileSystemProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/content/FileSystemProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/content/FileSystemProvider;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/content/FileSystemProvider$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/content/FileSystemProvider;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/internal/content/FileSystemProvider$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/content/FileSystemProvider;

    check-cast p1, Ljava/io/File;

    invoke-static {v0, p1}, Lcom/android/internal/content/FileSystemProvider;->$r8$lambda$M1oOEtAGFq8zDab8jYrQAK-GecQ(Lcom/android/internal/content/FileSystemProvider;Ljava/io/File;)Z

    move-result p1

    return p1
.end method
