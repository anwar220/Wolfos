# classes.dex

.class public final Landroid/database/sqlite/SQLiteCustomFunction;
.super Ljava/lang/Object;


# instance fields
.field public final callback:Landroid/database/sqlite/SQLiteDatabase$CustomFunction;

.field public final name:Ljava/lang/String;

.field public final numArgs:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CustomFunction;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_c

    iput-object p1, p0, Landroid/database/sqlite/SQLiteCustomFunction;->name:Ljava/lang/String;

    iput p2, p0, Landroid/database/sqlite/SQLiteCustomFunction;->numArgs:I

    iput-object p3, p0, Landroid/database/sqlite/SQLiteCustomFunction;->callback:Landroid/database/sqlite/SQLiteDatabase$CustomFunction;

    return-void

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "name must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private dispatchCallback([Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Landroid/database/sqlite/SQLiteCustomFunction;->callback:Landroid/database/sqlite/SQLiteDatabase$CustomFunction;

    invoke-interface {v0, p1}, Landroid/database/sqlite/SQLiteDatabase$CustomFunction;->callback([Ljava/lang/String;)V

    return-void
.end method