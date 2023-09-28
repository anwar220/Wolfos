# classes.dex

.class public interface abstract Landroid/content/pm/PackageParserStub;
.super Ljava/lang/Object;


# static fields
.field public static final TAG:Ljava/lang/String; = "PackageParserStub"


# direct methods
.method public static get()Landroid/content/pm/PackageParserStub;
    .registers 1

    const-class v0, Landroid/content/pm/PackageParserStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParserStub;

    return-object v0
.end method


# virtual methods
.method public abstract getDexFileSize(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public init()V
    .registers 3

    const-string v0, "PackageParserStub"

    const-string v1, "Init PackageParserStub"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public abstract isWcgWhiteList(Ljava/lang/String;)Z
.end method
