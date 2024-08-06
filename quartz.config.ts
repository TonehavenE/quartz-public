import { QuartzConfig } from "./quartz/cfg"
import * as Plugin from "./quartz/plugins"

/**
 * Quartz 4.0 Configuration
 *
 * See https://quartz.jzhao.xyz/configuration for more information.
 */
const config: QuartzConfig = {
	configuration: {
		pageTitle: "Haven",
		enableSPA: true,
		enablePopovers: true,
		analytics: null,
		locale: "en-US",
		baseUrl: "eben.tonehaven.org",
		ignorePatterns: ["private", "Templates", "Attachments", "Misc/Old Templates", "Clippings", ".obsidian", "!(PublicMedia)**/!(*.md)", "!(*.md)"],
		defaultDateType: "created",
		theme: {
			fontOrigin: "googleFonts",
			cdnCaching: true,
			typography: {
				header: "Schibsted Grotesk",
				body: "Lora",
				code: "Martian Mono",
			},
			colors: {
				lightMode: {
					light: "#eff1f5",
					lightgray: "#d7dce6",
					gray: "#bfc7d7",
					darkgray: "#232a38",
					dark: "#323c51",
					secondary: "#40a02b",
					tertiary: "#179299",
					highlight: "rgba(143, 159, 169, 0.15)",
					textHighlight: "#1e66f5",
				},
				darkMode: {
					light: "#161a16",
					lightgray: "#282f28",
					gray: "#3a453a",
					darkgray: "#f9faf9",
					dark: "#e4e8e4",
					secondary: "#a6da95",
					tertiary: "#8bd5ca",
					highlight: "rgba(143, 159, 169, 0.15)",
					textHighlight: "#8aadf4",
				},
			},
		},
	},
	plugins: {
		transformers: [
			Plugin.FrontMatter(),
			Plugin.CreatedModifiedDate({
				priority: ["frontmatter", "filesystem"],
			}),
			Plugin.SyntaxHighlighting({
				theme: {
					light: "github-light",
					dark: "github-dark",
				},
				keepBackground: false,
			}),
			Plugin.ObsidianFlavoredMarkdown({ enableInHtmlEmbed: false }),
			Plugin.GitHubFlavoredMarkdown(),
			Plugin.TableOfContents(),
			Plugin.CrawlLinks({ markdownLinkResolution: "shortest" }),
			Plugin.Description(),
			Plugin.Latex({ renderEngine: "katex" }),
		],
		filters: [Plugin.ExplicitPublish()],
		emitters: [
			Plugin.AliasRedirects(),
			Plugin.ComponentResources(),
			Plugin.ContentPage(),
			Plugin.FolderPage(),
			Plugin.TagPage(),
			Plugin.ContentIndex({
				enableSiteMap: true,
				enableRSS: true,
			}),
			Plugin.Assets(),
			Plugin.Static(),
			Plugin.NotFoundPage(),
		],
	},
}

export default config
