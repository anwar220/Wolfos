# classes.dex

.class public abstract Landroid/app/LoaderManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/LoaderManager$LoaderCallbacks;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableDebugLogging(Z)V
    .registers 1

    sput-boolean p0, Landroid/app/LoaderManagerImpl;->DEBUG:Z

    return-void
.end method


# virtual methods
.method public abstract destroyLoader(I)V
.end method

.method public abstract dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public getFragmentHostCallback()Landroid/app/FragmentHostCallback;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getLoader(I)Landroid/content/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I)",
            "Landroid/content/Loader<",
            "TD;>;"
        }
    .end annotation
.end method

.method public abstract initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Landroid/app/LoaderManager$LoaderCallbacks<",
            "TD;>;)",
            "Landroid/content/Loader<",
            "TD;>;"
        }
    .end annotation
.end method

.method public abstract restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Landroid/app/LoaderManager$LoaderCallbacks<",
            "TD;>;)",
            "Landroid/content/Loader<",
            "TD;>;"
        }
    .end annotation
.end method