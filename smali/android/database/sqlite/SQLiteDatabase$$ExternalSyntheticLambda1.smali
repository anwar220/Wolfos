# classes.dex

.class public final synthetic Landroid/database/sqlite/SQLiteDatabase$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-static {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->lambda$dumpDatabaseDirectory$2(Ljava/io/File;Ljava/io/File;)I

    move-result p1

    return p1
.end method
