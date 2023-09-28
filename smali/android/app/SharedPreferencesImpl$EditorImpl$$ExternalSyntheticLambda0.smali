# classes.dex

.class public final synthetic Landroid/app/SharedPreferencesImpl$EditorImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/SharedPreferencesImpl$EditorImpl;

.field public final synthetic f$1:Landroid/app/SharedPreferencesImpl$MemoryCommitResult;


# direct methods
.method public synthetic constructor <init>(Landroid/app/SharedPreferencesImpl$EditorImpl;Landroid/app/SharedPreferencesImpl$MemoryCommitResult;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/SharedPreferencesImpl$EditorImpl$$ExternalSyntheticLambda0;->f$0:Landroid/app/SharedPreferencesImpl$EditorImpl;

    iput-object p2, p0, Landroid/app/SharedPreferencesImpl$EditorImpl$$ExternalSyntheticLambda0;->f$1:Landroid/app/SharedPreferencesImpl$MemoryCommitResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl$$ExternalSyntheticLambda0;->f$0:Landroid/app/SharedPreferencesImpl$EditorImpl;

    iget-object v1, p0, Landroid/app/SharedPreferencesImpl$EditorImpl$$ExternalSyntheticLambda0;->f$1:Landroid/app/SharedPreferencesImpl$MemoryCommitResult;

    invoke-virtual {v0, v1}, Landroid/app/SharedPreferencesImpl$EditorImpl;->lambda$notifyListeners$0$android-app-SharedPreferencesImpl$EditorImpl(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;)V

    return-void
.end method
